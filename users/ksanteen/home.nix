{ config, pkgs, ... }:

{

  imports = [
    ./dotfiles/zsh.nix
    ./dotfiles/git.nix
    ./dotfiles/tmux.nix
    ./dotfiles/neovim.nix
  ];

  fonts.fontconfig.enable = true;

  home = {
    packages = with pkgs; [
      google-chrome
      gitAndTools.gh
      gtop
      tree
      ripgrep
      file
      binutils
      mosh
      skype
      tdesktop
      nixpkgs-fmt
      nixpkgs-review

      (python39.withPackages (ps: with ps; [
        powerline
        pygments
        pynvim
      ]))
    ];
  };

  programs = {
    home-manager.enable = true;
    fzf.enable = true;
    jq.enable = true;
    bat.enable = true;
    command-not-found.enable = true;
    dircolors.enable = true;
    htop.enable = true;
    info.enable = true;
    exa.enable = true;

    direnv = {
      enable = true;
      nix-direnv = {
        enable = true;
        enableFlakes = true;
      };
    };
  };

  services = {
#    nixos-hm-auto-update.enable = true;

    gpg-agent = {
      enable = true;
      enableSshSupport = true;
    };
  };

}
