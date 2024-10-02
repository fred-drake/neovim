{
  globals.mapleader = " ";

  plugins.which-key = {
    enable = true;
    settings = {
      spec = [
        {
          __unkeyed-1 = "<leader>g";
          group = "Git";
        }
        {
          __unkeyed-1 = "<leader><tab>";
          group = "Tabs";
        }
        {
          __unkeyed-1 = "<leader>f";
          group = "File / Find";
        }
        {
          __unkeyed-1 = "<leader>q";
          group = "Quit / Session";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "Search";
        }
        {
          __unkeyed-1 = "<leader>b";
          group = "Buffer";
        }
        {
          __unkeyed-1 = "<leader>o";
          group = "SOPS";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>d";
          group = "Debug";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>c";
          group = "Code Actions";
          icon = "";
        }
      ];
    };
  };

  keymaps = [
    # Normal mode
    {
      mode = "i";
      key = "jk";
      action = "<CMD>noh<CR><ESC>";
      options = { desc = "Normal mode and clear highlight"; };
    }
    {
      mode = "i";
      key = "<ESC>";
      action = "<CMD>noh<CR><ESC>";
      options = { desc = "Normal mode and clear highlight"; };
    }
    {
      mode = "n";
      key = "<ESC>";
      action = "<CMD>noh<CR><ESC>";
      options = { desc = "Normal mode and clear highlight"; };
    }

    # Add undo breakpoints
    {
      mode = "i";
      key = ",";
      action = ",<C-g>u";
      options = { desc = "Undo breakpoint"; };
    }
    {
      mode = "i";
      key = ".";
      action = ".<C-g>u";
      options = { desc = "Undo breakpoint"; };
    }
    {
      mode = "i";
      key = ";";
      action = ";<C-g>u";
      options = { desc = "Undo breakpoint"; };
    }

    {
      mode = "n";
      key = "<leader>e";
      action = "<CMD>Neotree toggle<CR>";
      options = { desc = "Toggle tree view"; };
    }

    # LSP Actions
    {
      mode = "n";
      key = "gd";
      action =
        "<CMD>FzfLua lsp_definitions jump_to_single_result=true ignore_current_line=true<CR>";
      options = { desc = "Goto Definition"; };
    }
    {
      mode = "n";
      key = "gr";
      action =
        "<CMD>FzfLua lsp_references jump_to_single_result=true ignore_current_line=true<CR>";
      options = { desc = "References"; };
    }
    {
      mode = "n";
      key = "gI";
      action =
        "<CMD>FzfLua lsp_implementations jump_to_single_result=true ignore_current_line=true<CR>";
      options = { desc = "Goto Implementation"; };
    }
    {
      mode = "n";
      key = "gy";
      action =
        "<CMD>FzfLua lsp_typedefs jump_to_single_result=true ignore_current_line=true<CR>";
      options = { desc = "Goto T[y]pe Definition"; };
    }
    {
      mode = "n";
      key = "D";
      action = "<CMD>lua vim.diagnostic.open_float()<CR>";
      options = { desc = "Popup Diagnostics"; };
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<CMD>Trouble diagnostics toggle<CR>";
      options = { desc = "List All Diagnostics"; };
    }

    # SOPS
    {
      mode = "n";
      key = "<leader>od";
      action = "<CMD>!sops -d -i %<CR><CR>";
      options = { desc = "Decrypt SOPS File"; };
    }
    {
      mode = "n";
      key = "<leader>oe";
      action = "<CMD>!sops -e -i %<CR><CR>";
      options = { desc = "Encrypt SOPS File"; };
    }

    # Git
    {
      mode = "n";
      key = "<leader>gg";
      action = "<CMD>LazyGit<CR>";
      options = { desc = "LazyGit"; };
    }

    # Windows
    {
      key = "<C-h>";
      action = "<CMD>wincmd h<CR>";
      options = { desc = "Navigate Window Left"; };
    }
    {
      key = "<C-j>";
      action = "<CMD>wincmd j<CR>";
      options = { desc = "Navigate Window Down"; };
    }
    {
      key = "<C-k>";
      action = "<CMD>wincmd k<CR>";
      options = { desc = "Navigate Window Up"; };
    }
    {
      key = "<C-l>";
      action = "<CMD>wincmd l<CR>";
      options = { desc = "Navigate Window Right"; };
    }
    {
      mode = "n";
      key = "<leader>w";
      action = "<c-w>";
      options = { desc = "Windows"; };
    }
    {
      mode = "n";
      key = "<leader>-";
      action = "<C-W>s";
      options = { desc = "Split Window Below"; };
    }
    {
      mode = "n";
      key = "<leader>|";
      action = "<C-W>v";
      options = { desc = "Split Window Right"; };
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options = { desc = "Delete Window"; };
    }

    # Tabs
    {
      mode = "n";
      key = "<leader><tab>l";
      action = "<CMD>tablast<CR>";
      options = { desc = "Last Tab"; };
    }
    {
      mode = "n";
      key = "<leader><tab>o";
      action = "<CMD>tabonly<CR>";
      options = { desc = "Close Other Tabs"; };
    }
    {
      mode = "n";
      key = "<leader><tab>f";
      action = "<CMD>tabfirst<CR>";
      options = { desc = "First Tab"; };
    }
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<CMD>tabnew<CR>";
      options = { desc = "New Tab"; };
    }
    {
      mode = "n";
      key = "<leader><tab>]";
      action = "<CMD>tabnext<CR>";
      options = { desc = "Next Tab"; };
    }
    {
      mode = "n";
      key = "<leader><tab>d";
      action = "<CMD>tabclose<CR>";
      options = { desc = "Close Tab"; };
    }
    {
      mode = "n";
      key = "<leader><tab>[";
      action = "<CMD>tabprevious<CR>";
      options = { desc = "Previous Tab"; };
    }

    # Buffer
    {
      mode = "n";
      key = "<S-h>";
      action = "<CMD>bprevious<CR>";
      options = { desc = "Previous Buffer"; };
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<CMD>bnext<CR>";
      options = { desc = "Next Buffer"; };
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<CMD>e #<CR>";
      options = { desc = "Switch To Other Buffer"; };
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<CMD>bd<CR>";
      options = { desc = "Delete Buffer and Window"; };
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<CMD>BufferLineTogglePin<CR>";
      options = { desc = "Toggle Pin"; };
    }
    {
      mode = "n";
      key = "<leader>bP";
      action = "<CMD>BufferLineGroupClose ungrouped<CR>";
      options = { desc = "Delete Non-Pinned Buffers"; };
    }
    {
      mode = "n";
      key = "<leader>bo";
      action = "<CMD>BufferLineCloseOthers<CR>";
      options = { desc = "Delete Other Buffers"; };
    }
    {
      mode = "n";
      key = "<leader>br";
      action = "<CMD>BufferLineCloseRight<CR>";
      options = { desc = "Delete Buffers to the Right"; };
    }
    {
      mode = "n";
      key = "<leader>bl";
      action = "<CMD>BufferLineCloseLeft<CR>";
      options = { desc = "Delete Buffers to the Left"; };
    }
  ];
}
