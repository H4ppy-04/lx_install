install_zsh() {
  install_packages "zsh"
  if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  fi

  if [ -d "$HOME/.oh-my-zsh" ]; then
    local ZSH_CUSTOM_DIR="$HOME/.oh-my-zsh/custom"
    git clone https://github.com/agkozak/zsh-z "$ZSH_CUSTOM_DIR/plugins/zsh-z"
    git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git "$ZSH_CUSTOM_DIR/plugins/fast-syntax-highlighting"
    git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM_DIR/plugins/zsh-autosuggestions"
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM_DIR/themes/powerlevel10k"
    unset ZSH_CUSTOM_DIR
  fi
  if [ -f "$HOME/.zshrc" ]; then
    mv -f "$HOME/.zshrc" "$HOME/.zshrc.bak"
  fi
  cp ".zshrc" "$HOME/"
  return 0
}

