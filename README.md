# awesome-nu
A curated list of awesome tools that work within the nu language ecosystem e.g. nushell, scripts, nana, etc. Feel free to raise a PR with your very cool script, plugin or custom completion 🚀.

---

## Plugins
You can find some examples about how to create and use plugins in the [Nushell Plugins](https://www.nushell.sh/book/plugins.html) page.
- [nu_plugin_periodic_table](https://crates.io/crates/nu_plugin_periodic_table): A periodic table of elements plugin.
- [nu_plugin_query](https://github.com/nushell/nushell/tree/main/crates/nu_plugin_query): Query json, xml and web pages.
- [nu_plugin_inc](https://github.com/nushell/nushell/tree/main/crates/nu_plugin_inc): Plugin to increment semantic versioning strings.
- [nu_plugin_gstat](https://github.com/nushell/nushell/tree/main/crates/nu_plugin_gstat): Show the git working tree status.
- [nu_plugin_net](https://crates.io/crates/nu_plugin_net): List network interfaces on any platform
- [nu_plugin_pnet](https://github.com/fdncred/nu_plugin_pnet): Same as above but named `pnet` as to not conflict with Windows `net` built-in.
- [nu_plugin_bin_reader](https://github.com/WindSoilder/nu_plugin_bin_reader): A high level, general binary data reader.
- [nu_plugin_from_parquet](https://github.com/fdncred/nu_plugin_from_parquet): A plugin to parse parquet files into nushell data structures.
- [nu_plugin_bio](https://github.com/Euphrasiologist/nu_plugin_bio): A bioinformatics plugin for nushell. 
- [nu_plugin_regex](https://github.com/fdncred/nu_plugin_regex): A regular expressions plugin for nushell.
- [nu_plugin_template](https://github.com/fdncred/nu_plugin_template): A `cargo-generate` template for making it easier to create nushell plugins.
- [nu_plugin_plist](https://github.com/ayax79/nu_plugin_plist): A plist plugin for nushell.
- [nu_plugin_plot](https://github.com/Euphrasiologist/nu_plugin_plot): A terminal plotting plugin for nushell.
- [nu_plugin_from_hdf5](https://github.com/Berrysoft/nu_plugin_from_hdf5): A plugin to parse HDF5 files into nushell record.
- [nu_plugin_from_beancount](https://github.com/jcornaz/nu_plugin_from_beancount): A nushell extension to load a beancount file into nu structured data.
- [nu_plugin_from_bencode](https://github.com/bluk/nu_plugin_from_bencode): A converter plugin from the bencode format for Nushell.
- [nu_plugin_dialog](https://github.com/Trivernis/nu-plugin-dialog): A nushell plugin for user interaction.
- [nu_plugin_formats](https://crates.io/crates/nu_plugin_formats): A nushell plugin for from eml, ics, ini, vcf.
- [nu_plugin_dcm](https://github.com/realcundo/nu_plugin_dcm): A nushell plugin to parse Dicom files.
- [nu_plugin_hcl](https://github.com/Yethal/nu_plugin_hcl): A Hashicorp Configuration Language plugin for nushell.

> If the shell freezes while registering the command, that means the plugin is using an older Nu version no longer compatible with your currect version. Consider bumping the Nu version to the latest in the `cargo.toml`, (may lead to breaking the script).

## Scripts
You can find some examples about how to create and use scripts in the [Nushell Scripts](https://www.nushell.sh/book/scripts.html) page.

- [cargo_search](https://github.com/nushell/nu_scripts/blob/main/sourced/cool-oneliners/cargo_search.nu): Perform a cargo search.
- [git_gone](https://github.com/nushell/nu_scripts/blob/main/sourced/cool-oneliners/git_gone.nu): Gently try to delete merged branches, excluding the checked out one.
- [nuschiit](https://github.com/nushell/nu_scripts/blob/main/sourced/webscraping/nuschiit.nu): Webscrapping example for the schiit.co.uk website.
- [conda](https://github.com/nushell/nu_scripts/blob/main/modules/virtual_environments/conda.nu): Activate/deactivate conda virtual environments.
- [get-weather](https://github.com/nushell/nu_scripts/blob/main/modules/weather/get-weather.nu): Get weather forecast for your location.
- [ultimate_extractor](https://github.com/nushell/nu_scripts/blob/main/modules/data_extraction/ultimate_extractor.nu): Function to extract archives with different extensions.
- [math_functions](https://github.com/nushell/nu_scripts/blob/main/modules/maths/math_functions.nu): Math functions for doing things like `factorial`, `root`.
- [wolframalpha](https://github.com/nushell/nu_scripts/blob/main/sourced/api_wrappers/wolframalpha.nu): WolframAlpha API wrapper.
- [packer.nu](https://github.com/Jan9103/packer.nu): A packer.nvim inspired package-manager for NuShell.

## Custom Completions
You can find some examples about how to create and use custom completions in the [Nushell Custom Completions](https://www.nushell.sh/book/custom_completions.html) page.
- [git](https://github.com/nushell/nu_scripts/blob/main/custom-completions/git/git-completions.nu): Completions for `git` commands.
- [make](https://github.com/nushell/nu_scripts/blob/main/custom-completions/make/make-completions.nu): Completions for `make` commands.
- [npm](https://github.com/nushell/nu_scripts/blob/main/custom-completions/npm/npm-completions.nu): Completions for `npm` commands.
- [cargo](https://github.com/nushell/nu_scripts/blob/main/custom-completions/cargo/cargo-completions.nu): Completions for `cargo` commands.
- [winget](https://github.com/nushell/nu_scripts/blob/main/custom-completions/winget/winget-completions.nu): Completions for `winget` package manager.

## Integrations
Other tools that work with or within the nu language ecosystem.
- [couchbase-shell](https://github.com/couchbaselabs/couchbase-shell): A modern, productive and fun shell for Couchbase Server and Cloud.
- [starship](https://starship.rs/#nushell): The minimal, blazing-fast, and infinitely customizable prompt for any shell.
- [zoxide](https://github.com/ajeetdsouza/zoxide): A smarter cd command, inspired by z and autojump.
- [oh-my-posh](https://ohmyposh.dev/docs/installation/prompt): A prompt theme engine for any shell.
- [virtualenv](https://github.com/pypa/virtualenv): Provides support for creating lightweight Python "virtual environments".
- [ansible](https://github.com/Yethal/ansible-role-nushell): Ansible role that installs nushell on your server
- [github action](https://github.com/marketplace/actions/setup-nu): A GitHub action that runs nushell in your CI.
- [nix flake](https://git.sr.ht/~mangoiv/nu-shell.nix): A [`nix`](https://nixos.org/) flake that outputs `nushell` packages, docs and tests as well as a `devShell` for developing `nushell`.
- [atuin](https://github.com/ellie/atuin): 🐢 Magical shell history
- [jc](https://github.com/kellyjonbrazil/jc): A collection of parsers for common unix tools that outputs JSON for easy import into nushell with `from json`.

## Editor Extensions
Plugins and Extensions that you can use in other text editors
- [Official Tree-sitter](https://github.com/nushell/tree-sitter-nu): A tree-sitter grammar for nu-lang, the language of nushell.
- [Alternate Tree-sitter](https://github.com/LhKipp/tree-sitter-nu): A Tree-sitter project for nushell.
- [nvim plugin](https://github.com/LhKipp/nvim-nu): A nvim pluging for nushell.
- [helix](https://github.com/helix-editor/helix): The helix editor also uses tree-sitter queries and are integrated into it now.
- [visual studio code](https://github.com/nushell/vscode-nushell-lang): The official nushell visual studio code extension. Also available on the [Microsoft Marketeplace](https://marketplace.visualstudio.com/items?itemName=TheNuProjectContributors.vscode-nushell-lang) and within visual studio code itself.
- [Sublime Text](https://github.com/kurokirasama/nushell_sublime_syntax): A Sublime Text plugin for Nushell.
- [Emacs](https://github.com/azzamsa/emacs-nushell): Emacs major mode for Nushell scripts.
- [Sublime Text](https://github.com/stevenxxiu/sublime_text_nushell): A Sublime Text pluging for Nushell.
