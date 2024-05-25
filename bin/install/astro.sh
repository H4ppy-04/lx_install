install_astro() {
  if [$PKGMGR -eq "pacman"]; then
    install_packages "ripgrep" "lazygit"
    install_ts
    sudo add-apt-repository -y ppa:neovim-ppa/unstable
    sudo apt update
    sudo apt install neovim -y
    mkdir -p ~/.config/nvim
    mv ~/.config/nvim ~/.config/nvim.bak
    
    # clean neovim folders
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    mv ~/.local/state/nvim ~/.local/state/nvim.bak
    mv ~/.cache/nvim ~/.cache/nvim.bak
  
    # clone the repo
    git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
  fi
}

