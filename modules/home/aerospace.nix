{ pkgs, ... }:
{
  # Manage AeroSpace via Home Manager instead of Homebrew
  programs.aerospace = {
    enable = true;
    # package = pkgs.aerospace; # default, uncomment if you want to pin/override

    # Render ~/.config/aerospace/aerospace.toml equivalent to your example
    userSettings = {
      after-startup-command = [
        "exec-and-forget borders active_color=0xffe1e3e4 inactive_color=0xff494d64 width=5.0"
      ];
      start-at-login = true;
      enable-normalization-flatten-containers = true;
      enable-normalization-opposite-orientation-for-nested-containers = true;
      accordion-padding = 30;
      default-root-container-layout = "tiles";
      default-root-container-orientation = "auto";
      on-focused-monitor-changed = [ "move-mouse monitor-lazy-center" ];
      automatically-unhide-macos-hidden-apps = false;

      key-mapping = {
        preset = "qwerty";
      };

      gaps = {
        inner = {
          horizontal = 8;
          vertical = 8;
        };
        outer = {
          left = 1;
          bottom = 1;
          top = 1;
          right = 1;
        };
      };

      mode = {
        main = {
          binding = {
            # Layout
            "alt-slash" = "layout tiles horizontal vertical";
            "alt-comma" = "layout accordion horizontal vertical";

            # Focus
            "alt-h" = "focus left";
            "alt-j" = "focus down";
            "alt-k" = "focus up";
            "alt-l" = "focus right";

            # Move
            "alt-shift-h" = "move left";
            "alt-shift-j" = "move down";
            "alt-shift-k" = "move up";
            "alt-shift-l" = "move right";

            # Resize
            "alt-minus" = "resize smart -50";
            "alt-equal" = "resize smart +50";

            # Workspaces 1-9
            "alt-1" = "workspace 1";
            "alt-2" = "workspace 2";
            "alt-3" = "workspace 3";
            "alt-4" = "workspace 4";
            "alt-5" = "workspace 5";
            "alt-6" = "workspace 6";
            "alt-7" = "workspace 7";
            "alt-8" = "workspace 8";
            "alt-9" = "workspace 9";

            # Move focused window to workspace 1-9
            "alt-shift-1" = "move-node-to-workspace 1";
            "alt-shift-2" = "move-node-to-workspace 2";
            "alt-shift-3" = "move-node-to-workspace 3";
            "alt-shift-4" = "move-node-to-workspace 4";
            "alt-shift-5" = "move-node-to-workspace 5";
            "alt-shift-6" = "move-node-to-workspace 6";
            "alt-shift-7" = "move-node-to-workspace 7";
            "alt-shift-8" = "move-node-to-workspace 8";
            "alt-shift-9" = "move-node-to-workspace 9";

            # Workspace navigation
            "alt-tab" = "workspace-back-and-forth";
            "alt-shift-tab" = "move-workspace-to-monitor --wrap-around next";

            # Mode switch
            "alt-shift-semicolon" = "mode service";
          };
        };

        service = {
          binding = {
            "esc" = [ "reload-config" "mode main" ];
            "r" = [ "flatten-workspace-tree" "mode main" ];
            "f" = [ "layout floating tiling" "mode main" ];
            "backspace" = [ "close-all-windows-but-current" "mode main" ];

            # Join with
            "alt-shift-h" = [ "join-with left" "mode main" ];
            "alt-shift-j" = [ "join-with down" "mode main" ];
            "alt-shift-k" = [ "join-with up" "mode main" ];
            "alt-shift-l" = [ "join-with right" "mode main" ];

            # Volume controls
            "down" = "volume down";
            "up" = "volume up";
            "shift-down" = [ "volume set 0" "mode main" ];
          };
        };
      };
    };
  };
}
