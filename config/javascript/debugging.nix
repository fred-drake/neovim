{pkgs, ...}: {
  plugins = {
    dap = {
      enable = true;
      adapters.servers = {
        "pwa-node" = {
          host = "localhost";
          port = 8123;
          executable = {
            command = "${pkgs.vscode-js-debug}/bin/js-debug";
          };
        };
      };
    };
  };

  extraConfigLua = ''
    require("dap").configurations.javascript = {
      {
        type = "pwa-node",
        request = "launch",
        name = "Launch file",
        program = "''${file}",
        cwd = "''${workspaceFolder}",
      },
    }
  '';
}
