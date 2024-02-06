install_fonts() {
  # the amount of 'new' fonts installed since this function was called
  let installed=0

  log "Fonts from $REPO_NERD_FONTS into $PATH_LOCAL_FONTS"
  mkdir -p $PATH_LOCAL_FONTS

  for i in ${1:+"$@"}; do

    # remove the file extension from the font name
    # and convert the result to lowercase so that
    # it can be used as a search term in a list of
    # already-installed fonts.
    font_name="${i%%.*}" | tr '[:upper:]' '[:lower:]' 

    if [[ $(fc-list | grep -E ".*${font_name:0:10}.*" | wc -c) -eq 0 ]]; then        # Match the first 10 characters of the font name
      rm -rf "$PATH_TEMP/$i"                                                         # against all installed fonts. If no results show,
      wget -q --show-progress --progress=bar -P "$PATH_TEMP" "$REPO_NERD_FONTS/$i"   # then the font is downloaded from the internet.
      unzip -qq -nu "$PATH_TEMP/$i" -d $PATH_LOCAL_FONTS 
      installed++
    	fi
  	done

  # if any packages have been installed, update the font cache
  if [[ installed -gt 0 ]]; then
    fc-cache -f > /dev/null &
    spinner $! "Updating font cache"
  fi
  return 0
}

