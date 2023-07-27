{ pkgs }:

{
  home.stateVersion = "23.05";

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
      "filetype plugin indent on
      "set nocompatible
      "set modelines=0
      "set nocompatible

      "set modelines=0

      "set encoding=utf-8
      "set scrolloff=3
      "set autoindent
      "set showmode
      "set showcmd
      "set hidden
      "set wildmenu
      "set wildmode=list:longest
      "set visualbell
      "set cursorline
      "set ttyfast
      "set ruler
      "set backspace=indent,eol,start
      "set laststatus=2
      set number relativenumber
      "set undofile

      "set ignorecase
      "set smartcase

      "set wrap
      "set textwidth=0
      "set formatoptions=qrn1
      "set colorcolumn=80
      "set linebreak

      "set makeprg=make

      "nnoremap <leader><space> :noh<cr>
      "nnoremap <tab> %
      "vnoremap <tab> %

      "noremap <up> <nop>
      "noremap <down> <nop>
      "noremap <left> <nop>
      "noremap <right> <nop>
      "noremap j gj
      "noremap k gk

      syntax on
      "set statusline+=%{FugitiveStatusline()}"
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
    pinentry_qt
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
