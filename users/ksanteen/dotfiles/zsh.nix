{ ... }:

{

  programs = {
    zsh = {
      enable = true;
#      historyControl = [ "erasedups" "ignoredups" "ignorespace" ];
#      historyFileSize = 1000000;
#      historySize = 100000;
      initExtra = ''
        export INPUTRC=~/.inputrc
        eval "$(direnv hook zsh)"
      '';
      oh-my-zsh = {
        enable = true;
        plugins = [ "git" "colorize" "cp" "shrink-path" "themes"];
        theme = "agnoster";
      };
    };

    readline = {
      enable = true;
      bindings = {
        "\e[A" = "history-search-backward";
        "\e[B" = "history-search-forward";
        "\e[C" = "forward-char";
        "\e[D" = "backward-char";
      };
      extraConfig = ''
        set match-hidden-files off
        set page-completions off
        set completion-query-items 350
        set completion-ignore-case on
        set show-all-if-ambiguous on
        set bell-style none
        TAB: menu-complete
      '';
    };
  };

  home = {
  #  file = {
  #    git-completion = {
  #      source = ./.git-completion.bash;
  #      target = ".git-completion.bash";
  #    };
  #    git-prompt = {
  #      source = ./.git-prompt.sh;
  #      target = ".git-prompt.sh";
  #    };
  #  };
  };
}
