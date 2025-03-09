{
  globals.mapleader = " ";

  plugins.which-key = {
    enable = true;
    settings = {
      spec = [
        # Settings groups
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
          __unkeyed-1 = "<leader>S";
          group = "SOPS";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>O";
          group = "Obsidian";
          icon = "󰎚";
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
        {
          __unkeyed-1 = "<leader>d/";
          group = "Search";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>D";
          group = "Database";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>a";
          group = "Avante";
          icon = "󰬈";
        }
        {
          __unkeyed-1 = "<leader>A";
          group = "AugmentCode";
          icon = "󰬈";
        }

        # Keys with custom icons / labels
        {
          __unkeyed-1 = "<leader>E";
          icon = "󰏇";
          desc = "Oil";
        }
        {
          __unkeyed-1 = "<leader>e";
          icon = "󰙅";
          desc = "NeoTree";
        }
        {
          __unkeyed-1 = "<leader>/";
          icon = "";
          desc = "Live Grep";
        }
        {
          __unkeyed-1 = "<leader>da";
          icon = "";
          desc = "Run with Args";
        }
        {
          __unkeyed-1 = "<leader>db";
          icon = "";
          desc = "Toggle Breakpoint";
        }
        {
          __unkeyed-1 = "<leader>dB";
          icon = "";
          desc = "Breakpoint Condition";
        }
        {
          __unkeyed-1 = "<leader>dc";
          icon = "";
          desc = "Continue";
        }
        {
          __unkeyed-1 = "<leader>dC";
          icon = "";
          desc = "Run to cursor";
        }
        {
          __unkeyed-1 = "<leader>de";
          icon = "󰫧";
          desc = "Eval";
        }
        {
          __unkeyed-1 = "<leader>dg";
          icon = "";
          desc = "Go to line (no execute)";
        }
        {
          __unkeyed-1 = "<leader>di";
          icon = "󰆹";
          desc = "Step into";
        }
        {
          __unkeyed-1 = "<leader>dj";
          icon = "";
          desc = "Down";
        }
        {
          __unkeyed-1 = "<leader>dk";
          icon = "";
          desc = "Up";
        }
        {
          __unkeyed-1 = "<leader>dl";
          icon = "";
          desc = "Run Last";
        }
        {
          __unkeyed-1 = "<leader>do";
          icon = "";
          desc = "Step Out";
        }
        {
          __unkeyed-1 = "<leader>dO";
          icon = "";
          desc = "Step Over";
        }
        {
          __unkeyed-1 = "<leader>dp";
          icon = "";
          desc = "Pause";
        }
        {
          __unkeyed-1 = "<leader>dt";
          icon = "";
          desc = "Terminate";
        }
        {
          __unkeyed-1 = "<leader>ca";
          icon = "󱐋";
          desc = "Code Actions";
        }
        {
          __unkeyed-1 = "<leader>cr";
          icon = "󰑕";
          desc = "Rename";
        }
        {
          __unkeyed-1 = "<leader>wa";
          icon = "󱑾";
          desc = "Add Workspace Folder";
        }
        {
          __unkeyed-1 = "<leader>wr";
          icon = "";
          desc = "Remove Workspace Folder";
        }
        {
          __unkeyed-1 = "<leader>wr";
          icon = "󰉓";
          desc = "List Workspace Folders";
        }
        {
          __unkeyed-1 = "<leader>h";
          icon = "󱡅";
          desc = "Harpoon";
        }
        {
          __unkeyed-1 = "<leader>n";
          icon = "";
          desc = "Bacon (Rust)";
        }
      ];
    };
  };

  keymaps = [
    # Interactive mode
    {
      mode = "i";
      key = "jk";
      action = "<CMD>noh<CR><ESC>";
      options.desc = "Normal mode and clear highlight";
    }
    {
      mode = "i";
      key = "<ESC>";
      action = "<CMD>noh<CR><ESC>";
      options.desc = "Normal mode and clear highlight";
    }
    {
      mode = "i";
      key = "<c-y>";
      action = "<CMD>call augment#Accept()<CR>";
      options.desc = "Accept AugmentCode suggestion";
    }

    # Normal mode
    {
      mode = "n";
      key = "<ESC>";
      action = "<CMD>noh<CR><ESC>";
      options.desc = "Normal mode and clear highlight";
    }

    # Activate NeoTree
    {
      mode = "n";
      key = "<leader>e";
      action = "<CMD>Neotree toggle<CR>";
      options.desc = "NeoTree";
    }

    # Activate Oil
    {
      mode = "n";
      key = "<leader>E";
      action = "<CMD>Oil<CR>";
      options.desc = "Oil";
    }

    # Hop command
    {
      mode = "n";
      key = "m";
      action = "<CMD>HopChar1<CR>";
      options.desc = "Hop Char 1";
    }

    # Add undo breakpoints
    {
      mode = "i";
      key = ",";
      action = ",<C-g>u";
      options.desc = "Undo breakpoint";
    }
    {
      mode = "i";
      key = ".";
      action = ".<C-g>u";
      options.desc = "Undo breakpoint";
    }
    {
      mode = "i";
      key = ";";
      action = ";<C-g>u";
      options.desc = "Undo breakpoint";
    }

    # Harpoon commands
    {
      mode = "n";
      key = "<leader>ha";
      action = "<CMD>lua require('harpoon.mark').add_file()<CR>";
      options.desc = "Add File";
    }
    {
      mode = "n";
      key = "<leader>hn";
      action = "<CMD>lua require('harpoon.ui').nav_next()<CR>";
      options.desc = "Next File";
    }
    {
      mode = "n";
      key = "<leader>hp";
      action = "<CMD>lua require('harpoon.ui').nav_prev()<CR>";
      options.desc = "Previous File";
    }
    {
      mode = "n";
      key = "<leader>hm";
      action = "<CMD>Telescope harpoon marks<CR>";
      options.desc = "Telescope Menu";
    }
    {
      mode = "n";
      key = "<leader>hq";
      action = "<CMD>lua require('harpoon.ui').toggle_quick_menu()<CR>";
      options.desc = "Quick Menu";
    }

    # Outline
    {
      mode = "n";
      key = "<leader>o";
      action = "<CMD>Outline<CR>";
      options.desc = "Outline";
    }

    # FZF-Lua custom commands -- I want to limit to current directory
    {
      mode = "n";
      key = "<leader>ff";
      action = "<CMD>lua require('fzf-lua').files({ cwd = vim.loop.cwd() })<CR>";
      options.desc = "Find Files";
    }
    {
      mode = "n";
      key = "<leader>fr";
      action = "<CMD>lua require('fzf-lua').oldfiles({ cwd = vim.loop.cwd() })<CR>";
      options.desc = "Recent Files";
    }

    # Database
    {
      mode = "n";
      key = "<leader>Du";
      action = "<CMD>DBUI<CR>";
      options.desc = "Show Database UI";
    }

    # LSP Actions
    {
      mode = "n";
      key = "gd";
      action = "<CMD>FzfLua lsp_definitions jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "Goto Definition";
    }
    {
      mode = "n";
      key = "gr";
      action = "<CMD>FzfLua lsp_references jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "References";
    }
    {
      mode = "n";
      key = "gI";
      action = "<CMD>FzfLua lsp_implementations jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "Goto Implementation";
    }
    {
      mode = "n";
      key = "gy";
      action = "<CMD>FzfLua lsp_typedefs jump_to_single_result=true ignore_current_line=true<CR>";
      options.desc = "Goto T[y]pe Definition";
    }
    {
      mode = "n";
      key = "<leader>cd";
      action = "<CMD>lua vim.diagnostic.open_float()<CR>";
      options.desc = "Popup Diagnostics";
    }
    {
      mode = "n";
      key = "<leader>cD";
      action = "<CMD>Trouble diagnostics toggle<CR>";
      options.desc = "List All Diagnostics";
    }

    # SOPS
    {
      mode = "n";
      key = "<leader>Sd";
      action = "<CMD>!sops -d -i %<CR><CR>";
      options.desc = "Decrypt SOPS File";
    }
    {
      mode = "n";
      key = "<leader>Se";
      action = "<CMD>!sops -e -i %<CR><CR>";
      options.desc = "Encrypt SOPS File";
    }

    # Obsidian
    {
      mode = "n";
      key = "<leader>On";
      action = "<CMD>ObsidianNew<CR>";
      options.desc = "New Note";
    }
    {
      mode = "n";
      key = "<leader>Oo";
      action = "<CMD>ObsidianQuickSwitch<CR>";
      options.desc = "Open Note";
    }
    {
      mode = "n";
      key = "<leader>Ol";
      action = "<CMD>ObsidianBacklinks<CR>";
      options.desc = "Backlinks";
    }
    {
      mode = "n";
      key = "<leader>Ot";
      action = "<CMD>ObsidianTags<CR>";
      options.desc = "Tags";
    }
    {
      mode = "n";
      key = "<leader>Ow";
      action = "<CMD>ObsidianWorkspace<CR>";
      options.desc = "Change workspace";
    }
    {
      mode = "n";
      key = "<leader>Op";
      action = "<CMD>ObsidianPasteImg<CR>";
      options.desc = "Paste image";
    }
    {
      mode = "n";
      key = "<leader>Oc";
      action = "<CMD>ObsidianToggleCheckbox<CR>";
      options.desc = "Toggle checkbox";
    }
    {
      mode = "n";
      key = "<leader>Of";
      action = "<CMD>ObsidianSearch<CR>";
      options.desc = "Find notes";
    }

    # Git
    {
      mode = "n";
      key = "<leader>gg";
      action = "<CMD>LazyGit<CR>";
      options.desc = "LazyGit";
    }

    # Windows
    {
      key = "<C-h>";
      action = "<CMD>wincmd h<CR>";
      options.desc = "Navigate Window Left";
    }
    {
      key = "<C-j>";
      action = "<CMD>wincmd j<CR>";
      options.desc = "Navigate Window Down";
    }
    {
      key = "<C-k>";
      action = "<CMD>wincmd k<CR>";
      options.desc = "Navigate Window Up";
    }
    {
      key = "<C-l>";
      action = "<CMD>wincmd l<CR>";
      options.desc = "Navigate Window Right";
    }
    {
      mode = "n";
      key = "<leader>w";
      action = "<c-w>";
      options.desc = "Windows";
    }
    {
      mode = "n";
      key = "<leader>-";
      action = "<C-W>s";
      options.desc = "Split Window Below";
    }
    {
      mode = "n";
      key = "<leader>|";
      action = "<C-W>v";
      options.desc = "Split Window Right";
    }
    {
      mode = "n";
      key = "<leader>wd";
      action = "<C-W>c";
      options.desc = "Delete Window";
    }

    # Tabs
    {
      mode = "n";
      key = "<leader><tab>l";
      action = "<CMD>tablast<CR>";
      options.desc = "Last Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>o";
      action = "<CMD>tabonly<CR>";
      options.desc = "Close Other Tabs";
    }
    {
      mode = "n";
      key = "<leader><tab>f";
      action = "<CMD>tabfirst<CR>";
      options.desc = "First Tab";
    }
    {
      mode = "n";
      key = "<leader><tab><tab>";
      action = "<CMD>tabnew<CR>";
      options.desc = "New Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>]";
      action = "<CMD>tabnext<CR>";
      options.desc = "Next Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>d";
      action = "<CMD>tabclose<CR>";
      options.desc = "Close Tab";
    }
    {
      mode = "n";
      key = "<leader><tab>[";
      action = "<CMD>tabprevious<CR>";
      options.desc = "Previous Tab";
    }

    # Buffer
    {
      mode = "n";
      key = "<S-h>";
      action = "<CMD>bprevious<CR>";
      options.desc = "Previous Buffer";
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<CMD>bnext<CR>";
      options.desc = "Next Buffer";
    }
    {
      mode = "n";
      key = "<leader>bb";
      action = "<CMD>e #<CR>";
      options.desc = "Switch To Other Buffer";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<CMD>bd<CR>";
      options.desc = "Delete Buffer and Window";
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<CMD>BufferLineTogglePin<CR>";
      options.desc = "Toggle Pin";
    }
    {
      mode = "n";
      key = "<leader>bP";
      action = "<CMD>BufferLineGroupClose ungrouped<CR>";
      options.desc = "Delete Non-Pinned Buffers";
    }
    {
      mode = "n";
      key = "<leader>bo";
      action = "<CMD>BufferLineCloseOthers<CR>";
      options.desc = "Delete Other Buffers";
    }
    {
      mode = "n";
      key = "<leader>br";
      action = "<CMD>BufferLineCloseRight<CR>";
      options.desc = "Delete Buffers to the Right";
    }
    {
      mode = "n";
      key = "<leader>bl";
      action = "<CMD>BufferLineCloseLeft<CR>";
      options.desc = "Delete Buffers to the Left";
    }

    # DAP Telescope Actions
    {
      mode = "n";
      key = "<leader>d/c";
      action = "<CMD>Telescope dap commands<CR>";
      options.desc = "Search Commands";
    }
    {
      mode = "n";
      key = "<leader>d/b";
      action = "<CMD>Telescope dap list_breakpoints<CR>";
      options.desc = "Search Breakpoints";
    }
    {
      mode = "n";
      key = "<leader>d/v";
      action = "<CMD>Telescope dap variables<CR>";
      options.desc = "Search Variables";
    }
    {
      mode = "n";
      key = "<leader>d/f";
      action = "<CMD>Telescope dap frames<CR>";
      options.desc = "Search Frames";
    }

    # Bacon (Rust)
    {
      mode = "n";
      key = "<leader>nl";
      action = "<CMD>BaconList<CR>";
      options.desc = "List Bacon Issues";
    }
    {
      mode = "n";
      key = "<leader>nn";
      action = "<CMD>BaconLoad<CR>:w<CR>:BaconNext<CR>";
      options.desc = "Next Bacon Issue";
    }

    # AugmentCode
    {
      mode = "n";
      key = "<leader>As";
      action = "<CMD>Augment status<CR>";
      options.desc = "AugmentCode Status";
    }
    {
      mode = "n";
      key = "<leader>Ae";
      action = "<CMD>Augment enable<CR>";
      options.desc = "AugmentCode Enable";
    }
    {
      mode = "n";
      key = "<leader>Ad";
      action = "<CMD>Augment disable<CR>";
      options.desc = "AugmentCode Disable";
    }
    {
      mode = "n";
      key = "<leader>Ac";
      action = "<CMD>Augment chat<CR>";
      options.desc = "Chat with AugmentCode";
    }
    {
      mode = "n";
      key = "<leader>An";
      action = "<CMD>Augment chat-new<CR>";
      options.desc = "Start a new chat";
    }
    {
      mode = "n";
      key = "<leader>At";
      action = "<CMD>Augment chat-toggle<CR>";
      options.desc = "Toggle chat window";
    }
  ];
}
