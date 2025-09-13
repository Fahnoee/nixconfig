{ pkgs, ... }:
{
  programs.ssh = {
    enable = true;
    # Use explicit config instead of HM defaults
    enableDefaultConfig = false;
    matchBlocks = {
      "*" = {
        # Quote the macOS path because it contains a space ("Group Containers").
        # OpenSSH treats unquoted whitespace as argument separators.
        identityAgent = if pkgs.stdenv.isDarwin
          then "\"~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock\""
          else "~/.1password/agent.sock";
      };
    };
  };
}
