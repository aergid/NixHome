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
      autorandr
      binutils
      discord
      file
      gitAndTools.gh
      google-chrome
      gqrx
      gtop
      joplin-desktop
      keepassx
      lazydocker
      lazygit
      mosh
      nextcloud-client
      nixpkgs-fmt
      nixpkgs-review
      nyxt
      p7zip
      ripgrep
      rtl-sdr
      skype
      tdesktop
      tig
      tree

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

    # nix-index = {
    #   enable = true;
    #   enableZshIntegration = true;
    #   enableBashIntegration = true;
    # };

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
