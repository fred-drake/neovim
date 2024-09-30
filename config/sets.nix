{
  plugins = {
    bufferline = {
      enable = true;
      settings = {
        options = {
          always_show_bufferline = false;
          buffer_close_icon = "";
          offsets = [{
            filetype = "neo-tree";
            text = "Neo-tree";
            highlight = "Directory";
            text_align = "left";
          }];
          diagnostics = "nvim_lsp";
        };
      };
    };

    gitsigns = {
      enable = true;
      settings = {
        current_line_blame = true;
        current_line_blame_opts = {
          virt_text = true;
          virt_text_pos = "eol";
        };
        signcolumn = true;
        signs = {
          add = { text = "│"; };
          change = { text = "│"; };
          changedelete = { text = "~"; };
          delete = { text = "_"; };
          topdelete = { text = "‾"; };
          untracked = { text = "┆"; };
        };
        watch_gitdir = { follow_files = true; };
      };
    };

    illuminate.enable = true;
    lazygit.enable = true;
    nvim-lightbulb.enable = true;
    lualine = {
      enable = true;
      settings.options.globalstatus = true;
    };
    luasnip.enable = true;

    mini = {
      enable = true;
      modules = {
        surround = { };
        indentscope = {
          symbol = "│";
          options = { try_as_border = true; };
        };
      };
    };

    neo-tree = {
      enable = true;
      extraOptions = {
        filesystem = {
          follow_current_file.enabled = true;
          filtered_items = {
            hide_dotfiles = false;
            hide_gitignored = false;
            hide_hidden = false;
          };
        };
      };
    };

    noice.enable = true;
    notify.enable = true;
    nvim-autopairs.enable = true;
    nvim-colorizer.enable = true;
    render-markdown.enable = true;
    todo-comments.enable = true;

    treesitter = {
      enable = true;

      folding = false;
      settings.indent.enable = true;
    };

    vim-surround.enable = true;
    web-devicons.enable = true;
  };
}
