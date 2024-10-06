let
  selectOpts = "{behavior = cmp.SelectBehavior.Select}";
in
  {pkgs, ...}: {
    plugins = {
      cmp = {
        enable = true;
        settings = {
          autoEnableSources = true;
          performance = {
            debounce = 150;
          };
          sources = [
            {name = "path";}
            {
              name = "nvim_lsp";
              keywordLength = 1;
            }
            {
              name = "buffer";
              keywordLength = 3;
            }
            {name = "supermaven";}
          ];

          snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
          formatting = {
            fields = [
              "menu"
              "abbr"
              "kind"
            ];
            format = ''
              function(entry, item)
                local menu_icon = {
                  nvim_lsp = '[LSP]',
                  luasnip = '[SNIP]',
                  buffer = '[BUF]',
                  path = '[PATH]',
                }

                item.menu = menu_icon[entry.source.name]
                return item
              end
            '';
          };

          mapping = {
            "<Up>" = "cmp.mapping.select_prev_item(${selectOpts})";
            "<Down>" = "cmp.mapping.select_next_item(${selectOpts})";

            "<C-p>" = "cmp.mapping.select_prev_item(${selectOpts})";
            "<C-n>" = "cmp.mapping.select_next_item(${selectOpts})";

            "<C-u>" = "cmp.mapping.scroll_docs(-4)";
            "<C-d>" = "cmp.mapping.scroll_docs(4)";

            "<C-e>" = "cmp.mapping.abort()";
            "<C-y>" = "cmp.mapping.confirm({select = true})";
            "<CR>" = "cmp.mapping.confirm({select = false})";

            "<C-f>" = ''
              cmp.mapping(
                function(fallback)
                  if luasnip.jumpable(1) then
                    luasnip.jump(1)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<C-b>" = ''
              cmp.mapping(
                function(fallback)
                  if luasnip.jumpable(-1) then
                    luasnip.jump(-1)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<Tab>" = ''
              cmp.mapping(
                function(fallback)
                  local col = vim.fn.col('.') - 1

                  if cmp.visible() then
                    cmp.select_next_item(select_opts)
                  elseif col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') then
                    fallback()
                  else
                    cmp.complete()
                  end
                end,
                { "i", "s" }
              )
            '';

            "<S-Tab>" = ''
              cmp.mapping(
                function(fallback)
                  if cmp.visible() then
                    cmp.select_prev_item(select_opts)
                  else
                    fallback()
                  end
                end,
                { "i", "s" }
              )
            '';
          };
          window = {
            completion = {
              border = "rounded";
              winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
              zindex = 1001;
              scrolloff = 0;
              colOffset = 0;
              sidePadding = 1;
              scrollbar = true;
            };
            documentation = {
              border = "rounded";
              winhighlight = "Normal:Normal,FloatBorder:Normal,CursorLine:Visual,Search:None";
              zindex = 1001;
              maxHeight = 20;
            };
          };
        };
      };
      cmp-nvim-lsp.enable = true;
      cmp-buffer.enable = true;
      cmp-path.enable = true;
      cmp-treesitter.enable = true;
      dap.enable = true;
      none-ls = {
        enable = true;
        sources.formatting = {
          alejandra.enable = true;
          hclfmt.enable = true;
          just.enable = true;
          opentofu_fmt.enable = true;
          prettier.enable = true;
          # rubyfmt is broken on darwin-based systems
          rubyfmt.enable = (
            pkgs.stdenv.hostPlatform.system
            != "x86_64-darwin"
            && pkgs.stdenv.hostPlatform.system != "aarch64-darwin"
          );
          sqlformat.enable = true;
          stylua.enable = true;
          yamlfmt.enable = true;
        };
        sources.diagnostics = {
          trivy.enable = true;
          yamllint.enable = true;
        };
      };

      conform-nvim = {
        enable = true;
        settings = {
          format_on_save = {
            lsp_fallback = "fallback";
            timeout_ms = 500;
          };
          notify_on_error = true;

          formatters_by_ft = {
            css = ["prettier"];
            html = ["prettier"];
            json = ["prettier"];
            just = ["just"];
            lua = ["stylua"];
            markdown = ["prettier"];
            nix = ["alejandra"];
            ruby = ["rubyfmt"];
            terraform = ["tofu_fmt"];
            tf = ["tofu_fmt"];
            yaml = ["yamlfmt"];
          };
        };
      };

      lsp = {
        enable = true;
        inlayHints = true;
        keymaps = {
          diagnostic = {
            "<leader>E" = "open_float";
            "[" = "goto_prev";
            "]" = "goto_next";
            "<leader>do" = "setloclist";
          };
          lspBuf = {
            "K" = "hover";
            "gD" = "declaration";
            "gd" = "definition";
            "gr" = "references";
            "gI" = "implementation";
            "gy" = "type_definition";
            "<leader>ca" = "code_action";
            "<leader>cr" = "rename";
            "<leader>wl" = "list_workspace_folders";
            "<leader>wr" = "remove_workspace_folder";
            "<leader>wa" = "add_workspace_folder";
          };
        };
        preConfig = ''
          vim.diagnostic.config({
            virtual_text = false,
            severity_sort = true,
            float = {
              border = 'rounded',
              source = 'always',
            },
          })

          vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
            vim.lsp.handlers.hover,
            {border = 'rounded'}
          )

          vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
            vim.lsp.handlers.signature_help,
            {border = 'rounded'}
          )
        '';
        postConfig = ''
          local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
          for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
          end
        '';
        servers = {
          jsonls.enable = true;
          marksman.enable = true;
          nil-ls.enable = true;
          nixd.enable = true;
          yamlls.enable = true;
          taplo.enable = true;
        };
      };

      trouble = {
        enable = true;
        settings = {
          use_diagnostic_signs = true;
        };
      };
    };
  }
