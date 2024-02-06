install_rust() {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs -o /tmp/rustup
  chmod +x /tmp/rustup && /tmp/rustup
  return 0
}

