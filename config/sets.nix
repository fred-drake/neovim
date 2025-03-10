{
  plugins = {
    auto-save.enable = true;
    bufferline = {
      # TODO: remove this once you are used to not having it
      enable = false;
      settings = {
        options = {
          always_show_bufferline = false;
          buffer_close_icon = "";
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
          add = {text = "│";};
          change = {text = "│";};
          changedelete = {text = "~";};
          delete = {text = "_";};
          topdelete = {text = "‾";};
          untracked = {text = "┆";};
        };
        watch_gitdir = {follow_files = true;};
      };
    };

    harpoon = {
      enable = true;
      saveOnToggle = true;
      saveOnChange = true;
      enterOnSendcmd = false;
      markBranch = true;
    };

    hop.enable = true;
    illuminate.enable = true;
    image.enable = true;
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
        surround = {};
        indentscope = {
          symbol = "│";
          options = {try_as_border = true;};
        };
      };
    };

    obsidian.enable = false;
    obsidian.settings = {
      attachments.img_folder = "Attachments";
      completion = {
        min_chars = 2;
        nvim_cmp = true;
      };
      daily_notes = {
        folder = "notes/dailies";
        date_format = "%Y-%m-%d";
        alias_format = "%B %-d, %Y";
        template = "templates/daily.md";
      };
      new_notes_location = "current_dir";
      note_id_func = ''
        function(title)
          local date = os.date("%Y-%m-%d %H%M")
          local suffix = ""
          if title ~= nil then
            suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
          else
            for _ = 1, 4 do
              suffix = suffix .. string.char(math.random(65, 90))
            end
          end
          return date .. "-" .. suffix
        end
      '';
      workspaces = [
        {
          name = "personal";
          path = "~/Source/gitea-app.internal.freddrake.com/fdrake/PKM-Personal";
        }
      ];
      wiki_link_func = "use_alias_only";
      disable_frontmatter = true;
      templates = {
        folder = "Templates";
        date_format = "%Y-%m-%d";
        time_format = "%H:%M";
        substitutions = {};
      };
      follow_url_func = ''
        function(url)
              -- Open the URL in the default web browser.
              vim.fn.jobstart({"open", url})  -- Mac OS
              -- vim.fn.jobstart({"xdg-open", url})  -- linux
              -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
              -- vim.ui.open(url) -- need Neovim 0.10.0+
            end'';
      follow_img_func = ''
        function(img)
              vim.fn.jobstart { "qlmanage", "-p", img }  -- Mac OS quick look preview
              -- vim.fn.jobstart({"xdg-open", url})  -- linux
              -- vim.cmd(':silent exec "!start ' .. url .. '"') -- Windows
            end'';
    };

    neo-tree.enable = true;
    noice.enable = false;
    notify.enable = true;
    nvim-autopairs.enable = true;
    colorizer.enable = true;
    oil = {
      enable = true;
      settings = {
        columns = [
          "icons"
          "permissions"
          "size"
          "mtime"
        ];
        default_file_explorer = true;
        delete_to_trash = true;
        skip_confirmation_for_simple_edits = true;
      };
    };
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
