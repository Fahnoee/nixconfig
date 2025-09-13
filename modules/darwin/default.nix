# This is your nix-darwin configuration.
# For home configuration, see /modules/home/*
{
  imports = [
    ./common
    ./homebrew
  ];

  # Use TouchID for `sudo` authentication
  security.pam.services.sudo_local.touchIdAuth = true;

  # Configure macOS system
  # More icebooks => https://github.com/ryan4yin/nix-darwin-kickstarter/blob/main/rich-demo/modules/system.nix
  system = {
    defaults = {
      NSGlobalDomain = {
        AppleShowAllExtensions = true;
        ApplePressAndHoldEnabled = false;
        InitialKeyRepeat = 15; # lower is faster
        KeyRepeat = 2;         # lower is faster
        NSAutomaticSpellingCorrectionEnabled = false;
        NSAutomaticCapitalizationEnabled = false;
        NSAutomaticQuoteSubstitutionEnabled = false;
        NSAutomaticDashSubstitutionEnabled = false;
        NSAutomaticPeriodSubstitutionEnabled = false;
        "com.apple.trackpad.scaling" = 2.0; # Trackpad tracking speed
      };

      dock = {
        autohide = true;
        show-recents = false;
        mru-spaces = false; # don’t reorder spaces
        tilesize = 56;
        minimize-to-application = true;
        # customize Hot Corners
        wvous-tl-corner = 2; # top-left - Mission Control
        # wvous-tr-corner = 13; # top-right - Lock Screen
        wvous-bl-corner = 3; # bottom-left - Application Windows
        wvous-br-corner = 4; # bottom-right - Desktop
      };

      finder = {
        AppleShowAllFiles = true;
        _FXShowPosixPathInTitle = true; # show full path in finder title
        FXEnableExtensionChangeWarning = false; # disable warning when changing file extension
        QuitMenuItem = true; # enable quit menu item
        ShowPathbar = true; # show path bar
        ShowStatusBar = true; # show status bar
        FXPreferredViewStyle = "Nlsv"; # list view
        # Use Home for new Finder windows
        NewWindowTarget = "Home";
        # Optionally set the explicit path (uncomment to use)
        # NewWindowTargetPath = "file:///Users/mmf/";
      };

      screencapture = {
        # NOTE: use an absolute path; ~ is not expanded by defaults
        location = "/Users/mmf/Downloads/Screenshots";
        type = "png";
      };

      trackpad = {
        Clicking = true;            # tap to click
        TrackpadThreeFingerDrag = true;
      };
    };

    keyboard = {
      # enableKeyMapping = true;
      # remapCapsLockToControl = true;
    };
  };
}
