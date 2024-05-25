install_packages() {
  log "User Binaries into $PATH_USER_BINARIES"

  plist=/tmp/packages

  if [ -f $plist ]; then
    rm $plist
  fi

  export_packages $plist

  for i in ${1:+"$@"}; do
    exists=$(cat $plist | grep -c $i | wc -c)
    if [ $exists -eq 0 ]; then
      test -f /bin/pacman && sudo pacman -S $i
      test -f /bin/apt && sudo apt install -qq -o=Dpkg::Use-Pty=0 $i -y
    fi
  done
  return 0
}

