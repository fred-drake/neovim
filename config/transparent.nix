let
  status = ["Alternate" "Current" "Inactive" "Visible"];
  part = [
    "ADDED"
    "CHANGED"
    "DELETED"
    "ERROR"
    "HINT"
    "Icon"
    "Index"
    "INFO"
    "Mod"
    "Number"
    "Sign"
    "SignRight"
    "Target"
    "WARN"
  ];
  groups_left = [
    "BufferTabpageFill"
    "BufferTabpages"
    "TabLine"
    "TabLineSel"
    "TabLineFill"
    "NormalFloat"
    "FloatBorder"
  ];
  # "Buffer" + status + part
  buffer_status =
    builtins.foldl' (acc: elem: acc ++ elem) []
    (builtins.map (status: builtins.map (part: "Buffer" + status + part) part)
      status);
in {
  plugins = {
    transparent = {
      enable = true;
      settings.extra_groups = groups_left ++ buffer_status;
    };
  };
}
