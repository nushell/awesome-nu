#!/usr/bin/nu

module utils {
    # Split string with given separator
    export def "str explode" [
        separator: string, # `character`
        --trim-end,        # Remove separator if seen at the end of the given string
    ]: string -> list<string> {
        let trimmed = if $trim_end {
            $in | str trim --right --char $separator
        } else {
            $in
        }
        $trimmed | split row $separator
    }
}

module version {
    # Compare integers: `1` for greater, `-1` for lesser, `0` for equal
    def "int compare" [other: int]: int -> int {
        match $in {
            $current if $current > $other => 1,
            $current if $current < $other => -1,
            _ => 0
        }
    }

    # Compare semantic versions (major/minor)
    export def "compare to" [other: string]: string -> int {
        let current = $in
        match ($current | get major | int compare ($other | get major)) {
            0 => ($current | get minor | int compare ($other | get minor)),
            $result => $result
        }
    }

    # Get major version from a version string
    def "get major" []: string -> int {
        use utils "str explode"
        let version = $in
        let exploded = $version | str explode '.'
        return ($exploded 
          | first 
          | if ($version | str starts-with '^') {
              $in | str substring 1..
            } else {
              $in
            } 
          | into int)
    }

    # Get minor version from a version string
    def "get minor" []: string -> int {
        use utils "str explode"
        let version = $in
        return ($version | str explode '.' | get 1 | into int)
    }
}

export module plugin-list {
    # Convert repository URL into a raw Cargo.toml download link
    def "get-raw-toml-address" [
        url: string,         # Repository URL (e.g., https://github.com/FMotalleb/nu_plugin_port_scan)
        branch: string,      # Branch name (e.g., main)
        software?: string    # Optional software forge name
    ]: nothing -> record {
        use utils "str explode"
        let parsed_url = $url | url parse
        let software = match $parsed_url.host {
            'github.com' => 'github',
            'gitlab.com' => 'gitlab',
            'codeberg.org' => 'forgejo',
            _ => $software
        }

        match $software {
            'github' => {
                let path_parts = $parsed_url.path | str explode '/' --trim-end
                return ($parsed_url
                    | upsert host raw.githubusercontent.com
                    | upsert path (if (($path_parts | length) > 3) {
                        $parsed_url.path | str replace $"tree/($branch)" $branch | append Cargo.toml | str join '/'
                    } else {
                        $path_parts | append [$branch, Cargo.toml] | str join '/'
                    })
                )
            },
            'gitlab' => {
                return ($parsed_url
                    | upsert path ($parsed_url.path | str explode '/' --trim-end | append [-, raw, $branch, Cargo.toml] | str join '/'))
            },
            'forgejo' => {
                return ($parsed_url
                    | update path {
                        split row "/" | skip 1 | if (($in | length) > 2) {
                            update 2 raw
                        } else {
                            append [raw, branch, $branch]
                        } | append Cargo.toml | str join "/" | "/" + $in
                    })
            },
            _ => {} # TODO: Handle errors
        }
    }

    # Download Cargo.toml file from repository
    def "get-toml" [branch: string, software?: string]: string -> record {
        let git_repo = $in | str replace --regex ".git$" ""
        let toml_file_address = (get-raw-toml-address $git_repo $branch $software | url join)
        try {
            return (http get --raw $toml_file_address | from toml)
        } catch {
            return {}
        }
    }

    # checks if given input is string or not
    def is-str []: any -> bool {
        return (($in | describe) == string)
    }

    # if input is string will return itself otherwise think its record and will return for $in.version
    def "get self or version" []: record -> string , string -> string {
        let input = $in
        if ($input | is-str) {
            return $input;
        } 
        return ($input.version? 
          | default "0.0.0")
    }

    # Map Cargo.toml file to a plugin entry record
    def "map toml to entry" [repository: string]: record -> record {
        let toml = $in
        if ([$toml.package?, $toml.dependencies?] | all {|i| $i != null}) {
            return {
                name: $"[($toml.package.name)]\(($repository)\)"
                version: $toml.package.version
                description: $toml.package.description?
                plugin: ($toml.dependencies.nu-plugin | get self or version)
                protocol: ($toml.dependencies.nu-protocol | get self or version)
            }
        } else {
            return {
                name: $"issue in config file for \(($repository)\)"
                version: "0.0"
                description: ""
                plugin: "0.0"
                protocol: "0.0"
            }
        }
    }

    def "get icon" []: int -> string {
        match $in {
            0 => {
                return ✅
            }
            _ => {
                return ⚠️
            }
        }
    }

    # adds an icon to version numbers of `plugin` and `protocol` version numbers of the plugin
    # if they are less than the minimum version -> add ⛔ icon before it
    # if versions are as the same as latest version -> add ✅ icon
    # otherwise -> add ⚠️ icon
     # Add version status icons to plugin and protocol versions
    def "set status" [
        plugin: string,        # Latest nu-plugin version
        protocol: string,      # Latest nu-protocol version
        min_plugin: string,    # Minimum nu-plugin version
        min_protocol: string   # Minimum nu-protocol version
    ]: record -> record {
      let input = $in
      use version "compare to"
      match [$input.plugin?, $input.protocol?] {
          [$plugin_version, $protocol_version] if ($plugin_version != null and $protocol_version != null) => {
              if (($plugin_version | compare to $min_plugin) == -1) or ($protocol_version | compare to $min_protocol) == -1 {
                  return ($input
                      | upsert plugin $"⛔($plugin_version)"
                      | upsert protocol $"⛔($protocol_version)")
              }
              return ($input
                  | upsert plugin $"($plugin_version | compare to $plugin | get icon)($plugin_version)"
                  | upsert protocol $"($protocol_version | compare to $protocol | get icon)($protocol_version)")
          },
          _ => $input
      }
    }

    # crete a table entry from given plugin record
    def "make entry" []: record -> record {
        let item = $in
        match $item.language {
            "rust" => {
                return ($item.repository.url | get-toml $item.repository.branch ($item | get -i $.repository.software) | map toml to entry $item.repository.url)
            }
            _ => {
                return {}
            }
        }
    }

    # creates a table of plugins from given plugin list yaml file
    export def create-table []: record -> table {
        let config = $in
        let plugin_version = ($config.core.plugin_repository | get-toml main | get package.version | get self or version)
        let protocol_version = ($config.core.protocol_repository | get-toml main | get package.version | get self or version)

        let result = $config.plugins
            | par-each {|plugin| $plugin
                | make entry
                | if $plugin.override? != null {
                    $in | merge $plugin.override
                } else {
                    $in
                }
                | set status $plugin_version $protocol_version $config.core.minimum_plugin $config.core.minimum_protocol
            }
            | sort-by name
        return $result
    }
}

export def "main" [] {
  let output = $env.OUTPUT? | default plugin_details.md
  let config = $env.CONFIG_FILE? | default config.yaml
  
  use plugin-list create-table

  open $config 
    | create-table 
    | to md 
    | save $output -f

  $"\n\nlast update at `(date now | format date `%Y-%m-%d %H:%M:%S %Z`)`\n" 
    | save --append $output;
}