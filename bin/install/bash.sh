install_bash() {
  rm -rf {/tmp/alias,~/.config/bash,$HOME/.bashrc,/tmp/bashrc}
  mkdir -p ~/.config/bash

  # aliases
  git clone https://gist.github.com/Trivoz/942e010f809e4ae7574960c03d53f38d /tmp/aliases
  mv /tmp/aliases/aliases ~/.config/bash/aliases

  # bashrc
  git clone https://gist.github.com/Trivoz/dc0c7601b2583fca829ec3b31e040f59 /tmp/bashrc
  mv /tmp/bashrc/bashrc ~/.config/bash/bashrc

  # create a symlink to bashrc in $HOME
  ln -s ~/.config/bash/bashrc ~/.bashrc
}

