{ config, pkgs, lib, ... }:

{
  home.username = "sugar";
  home.homeDirectory = "/home/sugar";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "25.05";

  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = true;
  };

  home.packages = with pkgs; [
    zoxide
    atuin
    croc
    ripgrep
    fd
    fzf
    xclip
  ];

  programs.git = {
    enable = true;
    userName = "Marcus Sanchez";
    userEmail = "marcussanchez031@gmail.com";
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
    };
  };

  home.file = { };

  home.sessionVariables = { };
}
  
