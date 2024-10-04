let
  # Read all files in the current directory
  files = builtins.readDir ./.;

  # Filter out default.nix and non-.nix files
  nixFiles = builtins.filter (name: name != "default.nix" && builtins.match ".*\\.nix" name != null) (builtins.attrNames files);

  # Create a list of import statements
  imports = map (name: ./. + "/${name}") nixFiles;
in {
  # Import all configuration modules automatically
  imports = imports;
}
