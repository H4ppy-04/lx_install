install_vim() {
  log "No installation of vim found: installing vim"
  if [ -x /bin/pacman ]; then
    sudo pacman -Syu
    sudo pacman -S vim --noconfirm --needed
  else
    sudo apt update
    sudo apt install vim -y
  fi

  # rm -rf {/tmp/vim,~/.vimrc,~/.vim}
  # git clone https://gist.github.com/Trivoz/7ae1f637a7ac98c7f14ebcba53c474aa /tmp/vim
  # mv /tmp/vim/.vimrc $HOME
  # FIXME: none of this shit works
}

