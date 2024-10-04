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

<table>
  <thead>
    <th>Technology</th><th>Formatter</th><th>Language Server</th><th>Debugger</th><th>Nix Configuration</th>
  </thead>
  <tbody>
    <tr><td>Nix</td><td bgcolor="#00ff00">alejandra</td><td bgcolor="#00ff00">nil-ls, nixd</td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>Just</td><td bgcolor="#00ff00">just</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>SQL</td><td bgcolor="#00ff00">sqlformat</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>Lua</td><td bgcolor="#00ff00">stylua</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>YAML</td><td bgcolor="#00ff00">yamlfmt</td><td bgcolor="#00ff00">yamllint, yamlls</td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>CSS</td><td bgcolor="#00ff00">prettier</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>HTML</td><td bgcolor="#00ff00">prettier</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>Javascript</td><td bgcolor="#00ff00">prettier</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>Typescript</td><td bgcolor="#00ff00">prettier</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>JSON</td><td bgcolor="#00ff00">prettier</td><td bgcolor="#00ff00">jsonls</td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>Markdown</td><td bgcolor="#00ff00">prettier</td><td bgcolor="#00ff00">marksman</td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>Ruby</td><td bgcolor="#00ff00">rubyfmt</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>Terraform</td><td bgcolor="#00ff00">tofu_fmt</td><td bgcolor="#ff0000"></td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>TOML</td><td bgcolor="#00ff00">taplo</td><td bgcolor="#00ff00">taplo</td><td bgcolor="#ff0000"></td><td>default</td></tr>
    <tr><td>C#</td><td bgcolor="#00ff00">csharpier</td><td bgcolor="#00ff00">csharp-ls</td><td bgcolor="#00ff00">netcoredbg</td><td>csharp</td></tr>
    <tr><td>Go</td><td bgcolor="#00ff00">golines</td><td bgcolor="#00ff00">gopls</td><td bgcolor="#00ff00">delve</td><td>golang</td></tr>
    <tr><td>Python</td><td bgcolor="#00ff00">black, isort</td><td bgcolor="#00ff00">flake8, jedi, pylint, rope, mccabe</td><td bgcolor="#00ff00">dap-python</td><td>python</td></tr>
    <tr><td>Rust</td><td bgcolor="#00ff00">rustfmt</td><td bgcolor="#00ff00">clippy</td><td bgcolor="#00ff00">lldb</td><td>rust</td></tr>
  </tbody>
</table>

## Things To Do

- TODO: Change fzf to only allow git-level root if applicable
