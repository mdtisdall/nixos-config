{ pkgs }:

{
  home.stateVersion = "23.11";

  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      vim-sensible
      vim-airline
      vim-fugitive 
      vim-surround
      vim-commentary
      vim-sleuth
      vim-pencil
    ];
    extraConfig = ''
      set number relativenumber
      syntax on
      '';
  };

  programs.git = {
    enable = true;
    userName = "Dylan Tisdall";
    userEmail = "mtisdall@pennmedicine.upenn.edu";
    extraConfig.core.editor = "vim";
    extraConfig.diff.tool = "vimdiff";
    extraConfig.difftool.prompt = false;
  };

  programs.gpg = {
    enable = true;
  };

  services.gpg-agent = {
    enable = true;
    pinentryFlavor = "qt";
  };

  home.packages = with pkgs; [
    gnupg
    git-crypt
    pinentry-qt
    freerdp
    firefox
    xorg.xev
    xclip
    xorg.xwininfo
    xorg.xkill
    #_1password
  ];


  programs.kitty = {
    enable = true;
  };

  xsession.windowManager.xmonad = {
    enable = true;
    config = pkgs.writeText "xmonad.hs" ''
      import XMonad
      main = xmonad def {
        terminal = "LIBGL_ALWAYS_SOFTWARE=1 kitty"
      }
    '';
  };


  programs.home-manager.enable = true;

  programs.bash.enable = true;

  programs.direnv = {
    enable = true;
  };
}
