#!/usr/bin/nu


export module utils {
    # split string with given seperator
    export def "str explode" [
        separator: string, # `character`
        --trim-end, # removes character if seen at the end of the given string
    ]: string -> list<string> {
        let trimmed = if $trim_end {
            $in | str trim --right --char $separator
        } else {
            $in
        }
        $trimmed | split row $separator
    }
}

export module version {
    # compares input with an other integer
    # if input > other => 1
    # if input < other => -1
    # if input == other => 0
    def "int compare" [
        other: int
    ]: int -> int {
        let current = $in
        if ($current > $other) {
            return 1
        } else if ($current < $other) {
            return ('-1' | into int)
        } else {
            return 0
        }
    }

    # compare given input with an other value
    # if input > other => 1
    # if input < other => -1
    # if input == other => 0
    export def "compare to" [
        other: string
    ]: string -> int {
        let $current = $in
        match ($current | get major | int compare ($other | get major)) {
            0 => {
               return ($current | get minor | int compare ($other | get minor)) 
            }
            $a => {
                return $a
            }
        } 
    }
    
    # get major version from version number
    # 0.90 -> 0
    # 1.90.0 -> 1
    # 15.0.0 -> 15
    def "get major" []: string -> int {
        let version = $in
        use utils "str explode"
        return ($version | str explode '.' | first | if ($version | str starts-with '^') { $in | str substring 1.. } else { $in } | into int)
    }
    
    # get major version from version number
    # 0.90 -> 90
    # 1.14.4 -> 14
    # 15.65.15 -> 65
    # ^15.65 -> 65
    def "get minor" []: string -> int {
        let version = $in
        use utils "str explode"
        return ($version | str explode '.' | $in.1 | into int)
    }
}

export module plugin-list {
    
    # converts repository url into raw download link for Cargo.toml
    def "get-raw-toml-address" [
        url: string, # github repository url (e.g. https://github.com/FMotalleb/nu_plugin_port_scan)
        branch: string # branch name (e.g. main)
    ]: nothing -> record {
        let url: record = ($url | url parse)
        use utils "str explode"
        match $url.host { 
            'github.com' => {
                if ( ($url.path | str explode '/' --trim-end | length) > 3 ) {
                    return ($url 
                    | upsert host raw.githubusercontent.com
                    | upsert path ($url.path 
                        | str replace $"tree/($branch)" $branch
                        | str explode '/' --trim-end 
                        | append Cargo.toml 
                        | str join '/'))
                }
                return ($url 
                    | upsert host raw.githubusercontent.com
                    | upsert path ($url.path 
                        | str explode '/' --trim-end 
                        | append $branch 
                        | append Cargo.toml 
                        | str join '/'))
             }, 
             'gitlab.com' => {
                return ($url 
                    | upsert path ($url.path 
                    | str explode '/' --trim-end 
                    | append - 
                    | append raw 
                    | append $branch 
                    | append Cargo.toml 
                    | str join '/'))
             }, 
             'codeberg.org' => {
                return ($url 
                    | upsert path ($url.path 
                    | str explode '/' --trim-end 
                    | append raw/branch
                    | append $branch 
                    | append Cargo.toml
                    | str join '/'))
             }
             _ => {
                # TODO add error
            }
        }
        
        return $url
    }
    
    # download toml file from repository
    def "get-toml" [
        branch: string # branch name (e.g. main)
    ]: string -> record {
        let git_repo = ($in |  str replace --regex ".git$" "") # github repository url (e.g. https://github.com/FMotalleb/nu_plugin_port_scan)
        let toml_file_address: string = (get-raw-toml-address $git_repo $branch | url join)
        try {
            return (http get --raw $toml_file_address | from toml) 
        } catch {
            return {}
        }
    }

    # checks if given input is string or not
    # TODO maybe a better way?
    def is-str []: any -> bool { 
        return (($in | to json | str trim -c '"') == $in)
    }
    # if input is string will return itself otherwise think its record and will return for $in.version
    # TODO handle error
    def "get self or version" []: record -> string , string -> string {
        let input = $in
        
        if ($input | is-str) {
            return $input;
        } else if ($input.version? | is-empty) {
            return "0.0.0"
        } else {
            return $input.version
        }

    }

    # map `Cargo.toml` file to a plugin entry record
    def "map-toml-to-entry" [
        repository: string
    ]: record -> record {
        let toml: record = $in
        if ([$toml.package?, $toml.dependencies?] | all {|i| $i != null}) {
            return {
                name: $"[($toml.package.name)]\(($repository)\)" 
                version: $toml.package.version
                description: $toml.package.description?
                plugin: ($toml.dependencies.nu-plugin 
                    | get self or version)
                protocol: ($toml.dependencies.nu-protocol 
                    | get self or version)
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
            -1 => {
                return ⚠️
            }
            _ => {
                return ✅
            }
        }  
    }

    # adds an icon to version numbers of `plugin` and `protocol` version numbers of the plugin
    # if they are less than the minimum version -> add ⛔ icon before it
    # if versions are as the same as latest version -> add ✅ icon
    # otherwise -> add ⚠️ icon
    def "set status" [
        plugin: string, # latest nu-plugin version
        protocol: string, # latest nu-protocol version
        min_plugin: string, # minimum nu-plugin version possible
        min_protocol: string # minimum nu-protocol version possible
    ]: record -> record {
        let input = $in
        use version "compare to"
        match [$input.plugin?, $input.protocol?,] {
            [$plugin_version,$protocol_version] if ($plugin_version != null and $protocol_version != null) => {
                if ((($plugin_version | compare to $min_plugin) == -1) or ($protocol_version | compare to $min_protocol) == -1) {
                    return ($input 
                        | upsert plugin $"⛔($plugin_version)"
                        | upsert protocol $"⛔($protocol_version)"
                        )
                }

                return ($input 
                    | upsert plugin $"($plugin_version | compare to $plugin | get icon)($plugin_version)"
                    | upsert protocol $"($protocol_version | compare to $protocol | get icon)($protocol_version)"
                    )
            }
            _ => {
                return $input
            }
        }
        
    }

    # crete a table entry from given plugin record
    def "make entry" []: record -> record {
        let item = $in
        match $item.language {
            "rust" => {
                return ($item.repository.url | get-toml $item.repository.branch| map-toml-to-entry $item.repository.url)
            }
            _ => {
                return {}
            }
        }
    }

    # creates a table of plugins from given plugin list yaml file
    export def create-table [] : record -> table {
        let config: record = $in
        let plugin_version = ($config.core.plugin_repository
            | get-toml main
            | get package.version
            | get self or version)

        let protocol_version = ($config.core.protocol_repository
            | get-toml main
            | get package.version 
            | get self or version)

        let result = $config.plugins 
            | par-each { |i| $i 
                | make entry
                | if ($i.override? != null) {
                    $in | merge $i.override
                } else { 
                    $in
                }
                | set status $plugin_version $protocol_version $config.core.minimum_plugin $config.core.minimum_protocol
            } 
        return $result
    }

}
