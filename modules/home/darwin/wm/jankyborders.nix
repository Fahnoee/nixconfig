{ pkgs, ... }:
{

  # Enable window borders on macOS via Home Manager
  services.jankyborders.enable = true;
  # You can tweak defaults later, e.g.:
  # services.jankyborders = {
  #   enable = true;
  #   activeColor = "#89b4fa";
  #   inactiveColor = "#585b70";
  #   width = 4;
  # };

}
