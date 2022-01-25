{ pkgs }:

{
  programs.vim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      vim-airline
      vim-fugitive 
    ];
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

  programs.alacritty = {
    enable = true;

    settings = {
      key_bindings = [
        {
          key = "C";
          mods = "Control";
          action = "Copy";
        }
        {
          key = "V";
          mods = "Control";
          action = "Paste";
        }
      ];

      env = {
        WINIT_X11_SCALE_FACTOR = "1";
      };
    };
  };

  home.packages = with pkgs; [
    gnupg
    git-crypt
    pinentry_qt
    freerdp
    firefox
    xorg.xev
    xclip
    kitty
  ];

  xsession.windowManager.xmonad = {
    enable = true;
    config = pkgs.writeText "xmonad.hs" ''
      import XMonad
      main = xmonad defaultConfig {
        terminal = "kitty"
      }
    '';
  };


  programs.home-manager.enable = true;

  programs.bash.enable = true;
}
