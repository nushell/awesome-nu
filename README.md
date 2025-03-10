# awesome-nu

A curated list of awesome tools that work within the nu language ecosystem e.g. nushell, scripts, nana, etc. Feel free to raise a PR with your very cool script, plugin or custom completion 🚀.

If you are looking for interesting blog posts, media attention or youtube videos on nushell please checkout our [Showcase](https://github.com/nushell/showcase)!

---

## Plugins

You can find some examples about how to create and use plugins in the [Nushell Plugins](https://www.nushell.sh/book/plugins.html) page.

- [nu_plugin_audio_hook](https://github.com/FMotalleb/nu_plugin_audio_hook): A nushell plugin to make and play sounds.
- [nu_plugin_bash_env](https://github.com/tesujimath/bash-env-nushell): The Bash environment plugin for nushell is **deprecated** in favour of the bash-env-nushell module (below)
- [nu_plugin_bexpand](https://codeberg.org/Taywee/nu-plugin-bexpand): Bash style brace expansion for nushell.
- [nu_plugin_bin_reader](https://github.com/WindSoilder/nu_plugin_bin_reader): A high level, general binary data reader.
- [nu_plugin_bio](https://github.com/Euphrasiologist/nu_plugin_bio): A bioinformatics plugin for nushell.
- [nu_plugin_cassandra_query](https://github.com/devyn/nu_plugin_cassandra_query): Query plugin for the Cassandra database for Nushell.
- [nu_plugin_clipboard](https://github.com/FMotalleb/nu_plugin_clipboard): A nushell plugin to copy text into clipboard or get text from it.
- [nu_plugin_compress](https://github.com/yybit/nu_plugin_compress): A nushell plugin for compression and decompression, supporting zstd, gzip, bzip2, and xz.
- [nu_plugin_dbus](https://github.com/devyn/nu_plugin_dbus): Nushell plugin for interacting with D-Bus.
- [nu_plugin_dcm](https://github.com/realcundo/nu_plugin_dcm): A nushell plugin to parse Dicom files.
- [nu_plugin_desktop_notifications](https://github.com/FMotalleb/nu_plugin_desktop_notifications): A nushell plugin to send desktop notifications.
- [nu_plugin_dialog](https://github.com/Trivernis/nu-plugin-dialog): A nushell plugin for user interaction.
- [nu_plugin_dns](https://github.com/dead10ck/nu_plugin_dns): DNS utility for nushell.
- [nu_plugin_dpktable](https://github.com/pdenapo/nu_plugin_dpkgtable): Gets a table of all known packages in a Debian GNU/Linux system.
- [nu_plugin_emoji](https://github.com/fdncred/nu_plugin_emoji): A nushell plugin that makes finding and printing emojis easy in nushell.
- [nu_plugin_endecode](https://github.com/KAAtheWiseGit/nugins/tree/trunk/endecode): A plugin with various encoding schemes, from Crockford's base-32 to HTML entity escaping.
- [nu_plugin_file](https://github.com/fdncred/nu_plugin_file): A nushell plugin that will inspect a file and return information based on its magic number.
- [nu_plugin_formats](https://crates.io/crates/nu_plugin_formats): A nushell plugin for parsing eml, ics, ini, vcf files.
- [nu_plugin_format_pcap](https://github.com/b4nst/nu_plugin_format_pcap): A nushell plugin for parsing pcap (packet data) files.
- [nu_plugin_from_beancount](https://github.com/jcornaz/nu_plugin_from_beancount): A nushell extension to load a beancount file into nu structured data.
- [nu_plugin_from_bencode](https://github.com/bluk/nu_plugin_from_bencode): A converter plugin from the bencode format for Nushell.
- [nu_plugin_from_hdf5](https://github.com/Berrysoft/nu_plugin_from_hdf5): A plugin to parse HDF5 files into nushell record.
- [nu_plugin_gstat](https://github.com/nushell/nushell/tree/main/crates/nu_plugin_gstat): Show the git working tree status.
- [nu_plugin_hashes](https://crates.io/crates/nu_plugin_hashes): A plugin that adds hash functions from the [hashes](https://github.com/RustCrypto/hashes) project.
- [nu_plugin_hcl](https://github.com/Yethal/nu_plugin_hcl): A Hashicorp Configuration Language plugin for nushell.
- [nu_plugin_highlight](https://github.com/cptpiepmatz/nu-plugin-highlight): 🌈 A nushell plugin for syntax highlighting.
- [nu_plugin_hmac](https://github.com/fnuttens/nu_plugin_hmac): HMAC sealing for nushell.
- [nu_plugin_image](https://github.com/FMotalleb/nu_plugin_image): A nushell plugin to open png images in the shell and save ansi string as images.
- [nu_plugin_inc](https://github.com/nushell/nushell/tree/main/crates/nu_plugin_inc): Plugin to increment semantic versioning strings.
- [nu_plugin_json_path](https://github.com/fdncred/nu_plugin_json_path): A nushell plugin for parsing json that uses the json path specification.
- [nu_plugin_kdl](https://github.com/amtoine/nu_plugin_kdl): A plugin to add KDL support to Nushell.
- [nu_plugin_logfmt](https://github.com/oderwat/nu_plugin_logfmt): Nushell plugin that allows conversion between logfmt and Nushell values.
- [nu_plugin_mime](https://github.com/kik4444/nu_plugin_mime): Nushell plugin for working with mime types without performing disk access.
- [nu_plugin_mongo](https://github.com/WindSoilder/nu_plugin_mongo): A nushell plugin to interactive with mongodb.
- [nu_plugin_msgpack](https://github.com/hulthe/nu_plugin_msgpack): Nushell plugin for converting to and from msgpack.
- [nu_plugin_net](https://crates.io/crates/nu_plugin_net): List network interfaces on any platform.
- [nu_plugin_nupsql](https://gitlab.com/HertelP/nu_plugin_nupsql): A nushell plugin to query postgres databases.
- [nu_plugin_pnet](https://github.com/fdncred/nu_plugin_pnet): Same as `nu_plugin_net` but named `pnet` to avoid conflict with Windows `net` built-in.
- [nu_plugin_parquet](https://github.com/fdncred/nu_plugin_parquet): A nushell plugin to read and write parquet files.
- [nu_plugin_periodic_table](https://crates.io/crates/nu_plugin_periodic_table): A periodic table of elements plugin.
- [nu_plugin_plist by ainvaltin](https://github.com/ainvaltin/nu_plugin_plist): Nushell plist and base85 plugin implemented in Go using [nu-plugin](https://github.com/ainvaltin/nu-plugin).
- [nu_plugin_plist by ayax79](https://github.com/ayax79/nu_plugin_plist): A plist plugin for nushell.
- [nu_plugin_plot](https://github.com/Euphrasiologist/nu_plugin_plot): A terminal plotting plugin for nushell.
- [nu_plugin_plotters](https://github.com/cptpiepmatz/nu-jupyter-kernel/tree/main/crates/nu_plugin_plotters): A nushell plugin for plotting charts.
- [nu_plugin_port_extension](https://github.com/FMotalleb/nu_plugin_port_extension): A nushell plugin to list all active connections and scanning ports on a target address (replacement of both nu_plugin_port_scan and nu_plugin_port_list since 0.102).
- [nu_plugin_prometheus](https://github.com/drbrain/nu_plugin_prometheus): Prometheus querying for nushell.
- [nu_plugin_qr_maker](https://github.com/FMotalleb/nu_plugin_qr_maker): A nushell plugin to create QR codes in terminal.
- [nu_plugin_query](https://github.com/nushell/nushell/tree/main/crates/nu_plugin_query): Query json, xml and web pages.
- [nu_plugin_regex](https://github.com/fdncred/nu_plugin_regex): A regular expressions plugin for nushell.
- [nu_plugin_rpm](https://github.com/yybit/nu_plugin_rpm): A nushell plugin for reading rpm packages.
- [nu_plugin_semver](https://github.com/abusch/nu_plugin_semver): A Nushell plugin to manipulate SemVer versions.
- [nu_plugin_sled](https://github.com/mrxiaozhuox/nu_plugin_sled): A Nushell plugin for managing sled databases.
- [nu_plugin_skim](https://github.com/idanarye/nu_plugin_skim): A Nushell plugin that provides a version of [skim](https://github.com/lotabout/skim) that can handle structured Nushell data for macOS and Linux.
- [nu_plugin_str_similarity](https://github.com/fdncred/nu_plugin_str_similarity): A nushell plugin that helps you calculate the edit distance between two strings using a variety of algorithms.
- [nu_plugin_template (String and HTML templating)](https://codeberg.org/kaathewise/nugins/src/branch/trunk/template): String and HTML templating in Nu.
- [nu_plugin_template (cargo-generate template)](https://github.com/fdncred/nu_plugin_template): A `cargo-generate` template for making it easier to create nushell plugins.
- [nu_plugin_ulid](https://github.com/lizclipse/nu_plugin_ulid): A nushell plugin that adds various ulid commands.
- [nu_plugin_units](https://github.com/JosephTLyons/nu_plugin_units): A Nushell plugin for easily converting between common units.
- [nu_plugin_vec](https://github.com/PhotonBursted/nu_plugin_vec): A Nushell plugin adding support for vector operations.
- [nu_plugin_ws](https://github.com/alex-kattathra-johnson/nu_plugin_ws): A Nushell plugin for easily streaming output from websocket endpoints
- [nu_plugin_x509](https://github.com/yybit/nu_plugin_x509): A Nushell plugin for parsing and generating x509 certificates.

> If the shell freezes while registering the command, that means the plugin is using an older Nu version no longer compatible with your current version. Consider bumping the Nu version to the latest in the `cargo.toml`, (may lead to breaking the script).

> To check the Nushell compatibility of each plugin you can check the [plugin_details.md](https://github.com/nushell/awesome-nu/blob/main/plugin_details.md)
>>
>> - ✅ it uses the latest version
>> - ⚠️ it does not use the latest version but it may work
>> - ⛔ plugin uses a deprecated API (cannot be compiled) or deprecated signature (Nushell cannot interact with them)

> In order to add your own plugin please fork this repository and add it to the list above and the list of plugins in [config.yaml](https://github.com/nushell/awesome-nu/blob/main/config.yaml) and then send a Pull Request.

## Scripts

You can find some examples about how to create and use scripts in the [Nushell Scripts](https://www.nushell.sh/book/scripts.html) page.

- [ai.nu](https://github.com/fj0r/ai.nu): OpenAI and Ollama Clients.
- [alias-finder.nu](https://github.com/KamilKleina/alias-finder.nu): Alias finder for Nushell.
- [bash-env-nushell](https://github.com/tesujimath/bash-env-nushell): Bash environment for Nushell.
- [cargo_search](https://github.com/nushell/nu_scripts/blob/main/sourced/cool-oneliners/cargo_search.nu): Perform a cargo search.
- [discord.nu](https://github.com/cablehead/discord.nu): Nushell wrapper for the Discord REST API
- [docker.nu](https://github.com/fj0r/docker.nu): Docker client toolset.
- [dotnu](https://github.com/nushell-prophet/dotnu): tools for Nushell module developers.
- [fsattr.nu](https://github.com/albert-tomanek/my-nu-commands/blob/master/posix/fsattr.nu): Nu commands for filesystem attributes.
- [get-weather](https://github.com/nushell/nu_scripts/blob/main/modules/weather/get-weather.nu): Get weather forecast for your location.
- [git.nu](https://github.com/fj0r/git.nu): Git toolset
- [git-aliases.nu](https://github.com/KamilKleina/git-aliases.nu): A collection of convenient Git aliases for Nushell.
- [git_gone](https://github.com/nushell/nu_scripts/blob/main/sourced/cool-oneliners/git_gone.nu): Gently try to delete merged branches, excluding the checked out one.
- [kubernetes.nu](https://github.com/fj0r/kubernetes.nu): Kubernetes client toolset.
- [math_functions](https://github.com/nushell/nu_scripts/blob/main/modules/maths/math_functions.nu): Math functions for doing things like `factorial`, `root`.
- [npup.nu](https://github.com/fj0r/npup): Puppet based on nushell.
- [nu-cmd-stack](https://github.com/nushell-prophet/nu-cmd-stack): scroll through the list of Nushell commands using `ctrl+alt+j/k` shortcuts.
- [nu-dir-bookmark](https://github.com/yh17549/nu-dir-bookmark): Bookmark for directory and auto jump.
- [nu-history-tools](https://github.com/nushell-prophet/nu-history-tools): analyze the command frequencies in Nushell history, generate cool graphs, benchmark statistics with other users.
- [nu-telegram-bot](https://github.com/nushell-prophet/nu-telegram-bot): Interacting with telegram's bot api
- [nufetch](https://github.com/Sanceilaks/nufetch): neofetch-like script written in Nu🐘
- [numd](https://github.com/nushell-prophet/numd): reproducible Nushell Markdown documents.
- [nuschiit](https://github.com/nushell/nu_scripts/blob/main/sourced/webscraping/nuschiit.nu): Web scraping example for the schiit.co.uk website.
- [nutest](https://github.com/vyadh/nutest): A Nushell test framework.
- [packer.nu](https://github.com/Jan9103/packer.nu): A packer.nvim inspired package-manager for NuShell.
- [powerline.nu](https://github.com/fj0r/powerline.nu): Powerline prompt for nushell.
- [refreshenv](https://github.com/Sanceilaks/nu-refreshenv-win): Refresh PATH on Windows like in chocolatey.
- [terraform-importer.nu](https://github.com/Yethal/terraform-importer): Automatically import resources into your Terraform state.
- [todo.nu](https://github.com/fj0r/todo.nu): Yet another TODO, but nu.
- [ultimate_extractor](https://github.com/nushell/nu_scripts/blob/main/modules/data_extraction/ultimate_extractor.nu): Function to extract archives with different extensions.
- [webserver.nu](https://github.com/Jan9103/webserver.nu): A library for creating webservers.
- [wi](https://github.com/phoenixr-codes/wi): A linguist wrapper for the terminal.
- [wolframalpha](https://github.com/nushell/nu_scripts/blob/main/sourced/api_wrappers/wolframalpha.nu): WolframAlpha API wrapper.
- [digital-rain](https://github.com/ArmoredPony/nu-digital-rain): Digital rain effect implementation for Nushell.
- [libvirt-hooks-nushell](https://github.com/atahabaki/libvirt-hooks-nushell): Feature-packed libvirt hooks scripts for Nushell.

## Custom Completions

You can find some examples about how to create and use custom completions in the [Nushell Custom Completions](https://www.nushell.sh/book/custom_completions.html) page.

- [git](https://github.com/nushell/nu_scripts/blob/main/custom-completions/git/git-completions.nu): Completions for `git` commands.
- [make](https://github.com/nushell/nu_scripts/blob/main/custom-completions/make/make-completions.nu): Completions for `make` commands.
- [npm](https://github.com/nushell/nu_scripts/blob/main/custom-completions/npm/npm-completions.nu): Completions for `npm` commands.
- [cargo](https://github.com/nushell/nu_scripts/blob/main/custom-completions/cargo/cargo-completions.nu): Completions for `cargo` commands.
- [winget](https://github.com/nushell/nu_scripts/blob/main/custom-completions/winget/winget-completions.nu): Completions for `winget` package manager.

## Integrations

Other tools that work with or within the nu language ecosystem.

- [ansible](https://github.com/Yethal/ansible-role-nushell): Ansible role that installs nushell on your server.
- [atuin](https://github.com/ellie/atuin): 🐢 Magical shell history.
- [broot](https://github.com/Canop/broot): A new way to see and navigate directory trees.
- [bru](https://github.com/selfagency/bru): A Nushell wrapper for Homebrew.
- [carapace-bin](https://github.com/carapace-sh/carapace-bin): multi-shell multi-command argument completer
- [clap_complete_nushell](https://github.com/clap-rs/clap/tree/master/clap_complete_nushell): A way to generate completions for clap based CLIs.
- [conda](https://github.com/nushell/nu_scripts/blob/main/modules/virtual_environments/conda.nu): Activate/deactivate conda virtual environments.
- [couchbase-shell](https://github.com/couchbaselabs/couchbase-shell): A modern, productive and fun shell for Couchbase Server and Cloud.
- [Direnv](https://github.com/direnv/direnv/blob/master/docs/hook.md#nushell): unclutter your .profile.
- [Dorothy](https://github.com/bevry/dorothy): 🧙‍♀️ Bring your dotfile commands and configuration to any shell, including Nu, Fish, Zsh, Bash.
- [GitHub Action](https://github.com/marketplace/actions/setup-nu): A GitHub action that runs nushell in your CI.
- [Milestone Action](https://github.com/hustcer/milestone-action): A Github action powered by Nushell to create, close, delete milestones and set milestone to merged PRs or closed issues.
- [Deepseek Code Review](https://github.com/hustcer/deepseek-review): Transform your code review workflow with this Nushell-driven GitHub Action, harnessing Deepseek's power for both CI and local use.
- [jc](https://github.com/kellyjonbrazil/jc): A collection of parsers for common unix tools that outputs JSON for easy import into nushell with `from json`.
- [mise](https://mise.jdx.dev/): A development environment setup tool (dev tools, env vars, task runner) that integrates with Nushell.
- [nu-shell.nix](https://git.sr.ht/~mangoiv/nu-shell.nix): A [`nix`](https://nixos.org/) flake that outputs `nushell` packages, docs and tests as well as a `devShell` for developing `nushell`.
- [nu-jupyter-kernel](https://github.com/cptpiepmatz/nu-jupyter-kernel): A jupyter raw kernel for nu.
- [Nuenv](https://determinate.systems/posts/nuenv): An experimental Nushell environment for Nix.
- [nunvm](https://github.com/Yakiyo/nunvm): A cross-platform nvm clone written in nushell.
- [nuPHP](https://github.com/mikayla-maki/nuPHP): Nu personal homepage webserver.
- [nur](https://github.com/ddanier/nur): A taskrunner based on nu shell.
- [nushellWith](https://github.com/YPares/nushellWith): Generate isolated nushell environments (with custom libraries and plugins), with Nix
- [oh-my-posh](https://ohmyposh.dev/docs/installation/prompt): A prompt theme engine for any shell.
- [pspg](https://github.com/okbob/pspg): A postgres pager that integrates in nushell.
- [setup-bend Action](https://github.com/hustcer/setup-bend): A GitHub action that sets up the Bend environment powered by Nushell and with cache support.
- [setup-moonbit Action](https://github.com/hustcer/setup-moonbit): A GitHub action that sets up the Moonbit environment powered by Nushell.
- [starship](https://starship.rs/#nushell): The minimal, blazing-fast, and infinitely customizable prompt for any shell.
- [virtualenv](https://github.com/pypa/virtualenv): Provides support for creating lightweight Python "virtual environments".
- [zoxide](https://github.com/ajeetdsouza/zoxide): A smarter cd command, inspired by z and autojump.

## Editor Extensions

Plugins and Extensions that you can use in other text editors

- [Official Tree-sitter](https://github.com/nushell/tree-sitter-nu): A tree-sitter grammar for nu-lang, the language of nushell.
- [Alternate Tree-sitter](https://github.com/LhKipp/tree-sitter-nu): A Tree-sitter project for nushell.
- [nvim plugin](https://github.com/LhKipp/nvim-nu): A nvim plugin for nushell.
- [helix](https://github.com/helix-editor/helix): The helix editor also uses tree-sitter queries which are integrated into it now.
- [Visual Studio Code](https://github.com/nushell/vscode-nushell-lang): The official nushell Visual Studio Code extension. Also available on the [Microsoft Marketplace](https://marketplace.visualstudio.com/items?itemName=TheNuProjectContributors.vscode-nushell-lang) and within Visual Studio Code itself.
- [Sublime Text by kurokirasama](https://github.com/kurokirasama/nushell_sublime_syntax): Nushell syntax highlight for Sublime Text.
- [Sublime Text by stevenxxiu](https://github.com/stevenxxiu/sublime_text_nushell): Sublime Text Nushell Package.
- [Emacs](https://github.com/mrkkrp/nushell-mode): Emacs major mode for Nushell scripts.
- [vim plugin](https://github.com/elkasztano/nushell-syntax-vim): Nushell syntax highlighting for Vim.
- [zed](https://github.com/zed-extensions/nu): Zed support for the Nu language.
- [Nushell LSP](https://github.com/nushell/nushell/tree/main/crates/nu-lsp): The official Nushell LSP.

## Reedline Integrations

Applications that have done a nice job using [reedline](https://github.com/nushell/reedline)

- [Glaredb](https://github.com/GlareDB/glaredb): An analytics DBMS for distributed data.
