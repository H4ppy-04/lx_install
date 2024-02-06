check_not_root() {
  if [ "$1" = "root" ]; then
    echo "( •_•) - running this script as root is highly dangerous."
    read -p "Proceed? [*n,y]  " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]
    then
      echo "ヽ(•‿•)ノ - good choice!"
      exit $EXIT_SUCCESS
    else
      return
    fi
  fi
}

