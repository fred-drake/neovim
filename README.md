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

## Things To Do

- TODO: Change fzf to only allow git-level root if applicable
