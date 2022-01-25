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
    pinentry_qt
  ];

  programs.home-manager.enable = true;

  programs.bash.enable = true;
}
