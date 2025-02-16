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
in {
  extraPlugins = with pkgs; [
    vimPlugins.supermaven-nvim # AI code completion
    vimPlugins.vim-dadbod # DB client
    vimPlugins.vim-dadbod-completion # DB completion
    vimPlugins.vim-dadbod-ui # DB UI
    vimPlugins.vim-tmux-navigator # tmux navigation
    outline-nvim
  ];

  extraConfigLua = ''
    require("telescope").load_extension('harpoon')

    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
      },
      ignore_filetypes = { cpp = true }, -- or { "cpp", }
      color = {
        suggestion_color = "#ffffff",
        cterm = 244,
      },
      log_level = "info", -- set to "off" to disable logging completely
      disable_inline_completion = false, -- disables inline completion for use with cmp
      disable_keymaps = false, -- disables built in keymaps for more manual control
      condition = function()
        return false
      end -- condition to check for stopping supermaven, `true` means to stop supermaven when the condition is true.
    })

    require("notify").setup({
      background_colour = "#000000",
    })

    require("outline").setup {}
  '';
}
