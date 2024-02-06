#!/bin/bash
spinner() {
    local PROC="$1"
    local str="$2"
    local delay="0.1"
    tput civis
    while [ -d /proc/$PROC ]; do
        printf '\033[s\033[u[ / ] %s\033[u' "$str"; sleep "$delay"
        printf '\033[s\033[u[ — ] %s\033[u' "$str"; sleep "$delay"
        printf '\033[s\033[u[ \ ] %s\033[u' "$str"; sleep "$delay"
        printf '\033[s\033[u[ | ] %s\033[u' "$str"; sleep "$delay"
    done
    printf '\033[s\033[u%*s\033[u\033[0m' $((${#str}+6)) " "
    tput cnorm
    return $EXIT_SUCCESS
}


log() {
  printf "[INFO] Downloading $1\n"
}

export_packages() {
  data=$(sudo apt list -qq 2> /dev/null)
  echo $data > $1
}
