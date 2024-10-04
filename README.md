# ❄️ My Personal Neovim Setup ❄️

My Nix-based Neovim configuration. For when you have an unhealthy obsession for declarativity and configurability.

![screenshot](images/desktop.png)

## Usage

Option 1: Clone and run

```bash
git clone https://github.com/fred-drake/neovim.git
nix run .#
```

Option 2: Run directly

```bash
nix run github:fred-drake/neovim#
```

### Configurations

The default configuration performs editing without settings for any particular language or technology. The following configurations allow for CMP, LSP, Tree-Sitter and DAP in their respective language or technology stack:

- Rust `nix run github:fred-drake/neovim#rust`
- C# `nix run github:fred-drake/neovim#csharp`
- Go `nix run github:fred-drake/neovim#golang`
- Python `nix run github:fred-drake/neovim#python`

## Technology Support

| Technology | Formatter    | Language Server                    | Debugger   | Nix Configuration |
| ---------- | ------------ | ---------------------------------- | ---------- | ----------------- |
| Nix        | alejandra    | nil-ls, nixd                       |            | default           |
| Just       | just         |                                    |            | default           |
| SQL        | sqlformat    |                                    |            | default           |
| Lua        | stylua       |                                    |            | default           |
| YAML       | yamlfmt      | yamllint, yamlls                   |            | default           |
| CSS        | prettier     |                                    |            | default           |
| HTML       | prettier     |                                    |            | default           |
| Javascript | prettier     |                                    |            | default           |
| Typescript | prettier     |                                    |            | default           |
| JSON       | prettier     | jsonls                             |            | default           |
| Markdown   | prettier     | marksman                           |            | default           |
| Ruby       | rubyfmt      |                                    |            | default           |
| Terraform  | tofu_fmt     |                                    |            | default           |
| TOML       | taplo        | taplo                              |            | default           |
| C#         | csharpier    | csharp-ls                          | netcoredbg | csharp            |
| Go         | golines      | gopls                              | delve      | golang            |
| Python     | black, isort | flake8, jedi, pylint, rope, mccabe | dap-python | python            |
| Rust       | rustfmt      | clippy                             | lldb       | rust              |

## Things To Do

- TODO: Change fzf to only allow git-level root if applicable
