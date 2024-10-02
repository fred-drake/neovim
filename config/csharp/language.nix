{

  # Couldn't get csharpier to work with nixvim -- package requires Dotnet SDK v6
  # but LSP requires v8.  Workaround for now is to add csharpier as a tool in
  # the solution itself, and add a hook here to reformat on save.
  # TODO: Look at how to get rid of this hack
  extraConfigLua = ''
    vim.api.nvim_create_autocmd("BufWritePost", {
      pattern = "*.cs",
      command = "silent !dotnet dotnet-csharpier %"
    })
  '';
}

