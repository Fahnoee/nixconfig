# Autoload home modules in this folder, excluding Darwin-specific ones.
# Darwin-only modules are imported per-user in myusers.nix to avoid Linux eval.
{
  imports =
    with builtins;
    let
      entries = attrNames (readDir ./.);
      filtered = filter (fn: fn != "default.nix" && fn != "darwin") entries;
    in map (fn: ./${fn}) filtered;
}
