# My Personal Neovim Setup

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
nix run github:fred-drake/neovim#.
```

## Things To Do

- TODO: Implement DAP for debugging
- TODO: Change fzf to only allow git-level root if applicable
- TODO: Break up LSP, CMP and Tree-Sitter for lanuages like rust, go, etc.
