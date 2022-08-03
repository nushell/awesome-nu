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

## Scripts
You can find some examples about how to create and use scripts in the [Nushell Scripts](https://www.nushell.sh/book/scripts.html) page.

- [cargo_search](https://github.com/nushell/nu_scripts/blob/main/cool-oneliners/cargo_search.nu): Perform a cargo search.
- [git_gone](https://github.com/nushell/nu_scripts/blob/main/cool-oneliners/git_gone.nu): Gently try to delete merged branches, excluding the checked out one.
- [nuschiit](https://github.com/nushell/nu_scripts/blob/main/webscraping/nuschiit.nu): Webscrapping example for the schiit.co.uk website.
- [conda](https://github.com/nushell/nu_scripts/blob/main/virtual_environments/conda.nu): Activate/deactivate conda virtual environments.
- [get-weather](https://github.com/nushell/nu_scripts/blob/main/weather/get-weather.nu): Get weather forecast for your location.
- [ultimate_extractor](https://github.com/nushell/nu_scripts/blob/main/data_extraction/ultimate_extractor.nu): Function to extract archives with different extensions.
- [math_functions](https://github.com/nushell/nu_scripts/blob/main/maths/math_functions.nu): Math functions for doing things like `factorial`, `root`.
- [wolframalpha](https://github.com/nushell/nu_scripts/blob/main/api_wrappers/wolframalpha.nu): WolframAlpha API wrapper.

## Custom Completions
You can find some examples about how to create and use custom completions in the [Nushell Custom Completions](https://www.nushell.sh/book/custom_completions.html) page.
- [git](https://github.com/nushell/nu_scripts/blob/main/custom-completions/git/git-completions.nu): Completions for `git` commands.
- [make](https://github.com/nushell/nu_scripts/blob/main/custom-completions/make/make-completions.nu): Completions for `make` commands.
- [npm](https://github.com/nushell/nu_scripts/blob/main/custom-completions/npm/npm-completions.nu): Completions for `npm` commands.
- [cargo](https://github.com/nushell/nu_scripts/blob/main/custom-completions/cargo/cargo-completions.nu): Completions for `cargo` commands.
- [winget](https://github.com/nushell/nu_scripts/blob/main/custom-completions/winget/winget-completions.nu): Compleitons for `winget` package manager.

## Integrations
Other tools that work with or within the nu language ecosystem.
- [couchbase-shell](https://github.com/couchbaselabs/couchbase-shell): A modern, productive and fun shell for Couchbase Server and Cloud.
- [starship](https://starship.rs/#nushell): The minimal, blazing-fast, and infinitely customizable prompt for any shell.
- [zoxide](https://github.com/ajeetdsouza/zoxide): A smarter cd command, inspired by z and autojump.
- [oh-my-posh](https://ohmyposh.dev/docs/installation/prompt): A prompt theme engine for any shell.
- [virtualenv](https://github.com/pypa/virtualenv): Provides support for creating lightweight Python "virtual environments".
- [ansible](https://github.com/Yethal/ansible-role-nushell): Ansible role that installs nushell on your server
- [nupac](https://github.com/skelly37/nupac): Nu package manager written entirely in nu & for nu.

## Editor Extensions
Plugins and Extensions that you can use in other text editors
- [Tree-sitter](https://github.com/LhKipp/tree-sitter-nu): A Tree-sitter project for nushell.
- [nvim plugin](https://github.com/LhKipp/nvim-nu): A nvim pluging for nushell.
- [helix](https://github.com/helix-editor/helix): The helix editor also uses tree-sitter queries and are integrated into it now.
- [visual studio code](https://github.com/nushell/vscode-nushell-lang): The official nushell visual studio code extension. Also available on the [Microsoft Marketeplace](https://marketplace.visualstudio.com/items?itemName=TheNuProjectContributors.vscode-nushell-lang) and within visual studio code itself.
