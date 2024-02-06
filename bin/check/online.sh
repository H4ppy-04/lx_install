check_online() {
  # since we don't have internet, we can't use wget so we have to resort to 80's era technology
  echo -e "GET http://google.com HTTP/1.0\n\n" | nc google.com 80 > /dev/null 2>&1

  if [ ! $? -eq 0 ]; then
      echo "you're offline!  (╯°□°）╯︵ ┻━┻" && exit $EXIT_FAILURE
  fi
}

