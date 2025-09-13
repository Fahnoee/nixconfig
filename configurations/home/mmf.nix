{ flake, ... }:
let
  inherit (flake) inputs;
  inherit (inputs) self;
in
{
  imports = [
    self.homeModules.default
  ];

  # Defined by /modules/home/me.nix
  # And used all around in /modules/home/*
  me = {
    username = "mmf";
    fullname = "Mikkel Martinus Fahnoee";
    email = "mikkel120202@hotmail.com";
  };

  home.stateVersion = "24.11";
}
