# Auto-import all Homebrew-related modules in this folder
{
  imports =
    with builtins;
    map (fn: ./${fn})
      (filter (fn: fn != "default.nix") (attrNames (readDir ./.)));
}

