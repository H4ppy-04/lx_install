install_vim() {
  log "Installing vim"
  sudo apt update
  sudo apt install vim -y

  # rm -rf {/tmp/vim,~/.vimrc,~/.vim}

  git clone https://gist.github.com/Trivoz/7ae1f637a7ac98c7f14ebcba53c474aa /tmp
  mv /tmp/vim/.vimrc ~/.vimrc

  mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/pack/plugins/start
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

  git clone https://github.com/ctrlpvim/ctrlp.vim     ~/.vim/pack/plugins/start/ctrlp
  git clone https://github.com/mhinz/vim-janah        ~/.vim/pack/plugins/start/vim-janah
  git clone https://github.com/airblade/vim-gitgutter ~/.vim/pack/plugins/start/vim-gitgutter

  # only do this if latex is already installed:
  # git clone https://github.com/lervag/vimtex          ~/.vim/pack/plugins/start/vimtex

  mkdir -p ~/.vim/pack/tpope/start
  git clone https://tpope.io/vim/fugitive.git     ~/.vim/pack/tpope/start/vim-fugitive
  git clone https://tpope.io/vim/sensible.git     ~/.vim/pack/tpope/start/vim-sensible
  git clone https://tpope.io/vim/repeat.git       ~/.vim/pack/tpope/start/vim-repeat
  git clone https://github.com/tpope/vim-surround ~/.vim/pack/tpope/start/vim-surround
  git clone https://github.com/tpope/vim-vinegar  ~/.vim/pack/tpope/start/vim-vinegar
}

