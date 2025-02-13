{
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {formatters_by_ft.python = ["black"];};
    };
    # lsp.servers.pylsp.enable = false;
    lsp.servers.pyright = {
      enable = true;
    };
    none-ls.sources.formatting.black.enable = true;
  };
}
