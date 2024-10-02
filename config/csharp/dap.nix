{ pkgs, ... }: {
  extraConfigLua = ''
    local dap = require('dap')

    dap.adapters.coreclr = {
      type = 'executable',
      command = '${pkgs.netcoredbg}/bin/netcoredbg',
      args = {'--interpreter=vscode'}
    }

  '';
}
