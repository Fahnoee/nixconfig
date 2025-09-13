{
  imports = [
    ./myusers.nix
  ];

  # Allow unfree packages globally across all systems
  nixpkgs.config.allowUnfree = true;
}
