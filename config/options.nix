{
  config = {
    opts = {
      updatetime = 100; # faster completion
      number = true;
      relativenumber = true;

      autoindent = true;
      autowrite = true;
      confirm = true;
      clipboard = "unnamedplus";
      cursorline = true;
      list = true;
      expandtab = true;
      shiftround = true;
      shiftwidth = 2;
      # showmode = false;
      signcolumn = "yes";
      smartcase = true;
      smartindent = true;
      tabstop = 2;

      ignorecase = true;
      incsearch = true;
      completeopt = "menu,menuone,noselect";
      wildmode = "longest:full,full";

      swapfile = false;
      undofile = true; # Build-in persistent undo
      undolevels = 10000;
    };
  };
}
