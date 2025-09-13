{ config, pkgs, ... }:
{
  home.shellAliases = {
    g = "git";
    lg = "lazygit";
  };

  # https://nixos.asia/en/git
  programs = {
    git = {
      enable = true;
      userName = config.me.fullname;
      userEmail = config.me.email;
      ignores = [ "*~" "*.swp" ];
      aliases = {
        ci = "commit";
      };
      extraConfig = {
        # init.defaultBranch = "master";
        # pull.rebase = "false";
        # Git commit signing via SSH + 1Password
        user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIIxm8/9H1hOk3oj6xZv2eJWOUL1ABuUeMcuyUYLr/vt";
        gpg.format = "ssh";
        gpg.ssh.program = if pkgs.stdenv.isDarwin
          then "/Applications/1Password.app/Contents/MacOS/op-ssh-sign"
          else "op-ssh-sign";
        commit.gpgsign = true;
      };
    };
    lazygit.enable = true;
  };

}
