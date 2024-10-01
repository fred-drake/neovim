{ pkgs, ... }: {
  plugins.dap = {
    enable = true;
    extensions = {
      dap-ui.enable = true;
      dap-virtual-text.enable = true;
    };

    adapters = {
      executables = { lldb = { command = "${pkgs.lldb_19}/bin/lldb-dap"; }; };
    };
  };
}
