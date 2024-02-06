check_font_installed() {
    fontname=$1
    fc-list | grep -i "$fontname" >/dev/null
}
