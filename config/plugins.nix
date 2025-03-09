{pkgs, ...}: let
  outline-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "outline-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "hedyhli";
      repo = "outline.nvim";
      rev = "d5c29ee3ff3b7d1bdd454b37698316e67808c36e";
      hash = "sha256-uWMHUkrGo8D3nUvYrDcXOWbXLWvFv9rWsBxLfR2ckcY=";
    };
    nvimSkipModule = "outline.providers.norg";
  };
  augment-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "augment-nvim";
    src = pkgs.fetchFromGitHub {
      owner = "augmentcode";
      repo = "augment.vim";
      rev = "e14cbe9fdc33dff1a4b55c0fc858b94f5e833862";
      hash = "sha256-VzHFmt8uOsZEYqIGAbwSrmGLlOfTnL7QvsRB5yMpSG0=";
    };
    nvimSkipModule = "outline.providers.norg";
  };
in {
  extraPlugins = with pkgs; [
    vimPlugins.vim-dadbod # DB client
    vimPlugins.vim-dadbod-completion # DB completion
    vimPlugins.vim-dadbod-ui # DB UI
    vimPlugins.vim-tmux-navigator # tmux navigation
    outline-nvim # Document outliner
    augment-nvim # AI code completion
  ];

  extraConfigLua = ''
    require("telescope").load_extension('harpoon')

    require("notify").setup({
      background_colour = "#000000",
    })

    require("outline").setup {}
  '';
}
