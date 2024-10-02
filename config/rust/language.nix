{ pkgs, ... }: {
  plugins = {
    conform-nvim = {
      enable = true;
      settings = { formatters_by_ft.rust = [ "rustfmt" ]; };
    };
    rustaceanvim = {
      enable = true;
      settings = {
        dap.adapter = {
          command = "${pkgs.lldb_19}/bin/lldb-dap";
          type = "executable";
        };
        tools.enable_clippy = true;
        server = {
          default_settings = {
            inlayHints = { lifetimeElisionHints = { enable = "always"; }; };
            rust-analyzer = {
              cargo = { allFeatures = true; };
              check = { command = "clippy"; };
            };
          };
        };
      };
    };

  };
}
