{ pkgs, ... }: {
  plugins = {
    conform-nvim = {
      enable = true;
      # settings = { formatters_by_ft.cs = [ "csharpier" ]; };
    };

    lsp.servers.csharp-ls = { enable = true; };
  };
}

