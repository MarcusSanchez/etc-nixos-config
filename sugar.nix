{ config, pkgs, lib, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = true;
  };

  home.username = "sugar";
  home.homeDirectory = "/home/sugar";
  home.stateVersion = "25.05";

  home.packages = with pkgs; [
    zoxide
    atuin
    croc
    ripgrep
    fd
    fzf
    xclip
    claude-code
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
}
