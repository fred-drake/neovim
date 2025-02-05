{pkgs, ...}: {
  plugins = {
    bacon.enable = true;
    conform-nvim = {
      enable = true;
      settings = {formatters_by_ft.rust = ["rustfmt"];};
    };
    # dap-lldb.enable = true;
    rustaceanvim = {
      enable = true;
      settings = {
        # dap.adapters.rt_lldb = {
        #   name = "rt_lldb";
        #   command = "/Applications/Xcode.app/Contents/Developer/usr/bin/lldb-dap";
        #   type = "executable";
        # };
        # dap.adapters.lldb = {
        #   name = "Deeeeebug";
        #   type = "lldb-dap";
        #   request = "launch";
        #   # port = "${''$''}{port}/bin/rust-lldb-vscode-adapter";
        #   # command = "/opt/homebrew/opt/llvm/bin/lldb-dap";
        #   # program = "./target/debug/deckgame";
        # };
        # dap.adapters.rt_lldb = {
        #   name = "lldb";
        #   type = "executable";
        #   #command = "${pkgs.lldb}/bin/lldb-dap";
        #   command = "${pkgs.vscode-extensions.vadimcn.vscode-lldb}/share/vscode/extensions/vadimcn.vscode-lldb/adapter/codelldb";
        # };
        server = {
          dap.adapters.lldb = {
            type = "server";
            port = "${''$''}{port}";
            executable = {
              command = "codelldb";
              args = ["--port" "${''$''}{port}"];
            };
          };
        };
        tools.enable_clippy = true;
        server = {
          default_settings = {
            inlayHints = {lifetimeElisionHints = {enable = "always";};};
            rust-analyzer = {
              cargo = {allFeatures = true;};
              check = {command = "clippy";};
              files = {excludeDirs = ["target" ".git" ".cargo" ".github" ".direnv"];};
            };
          };
        };
      };
    };
  };
}
