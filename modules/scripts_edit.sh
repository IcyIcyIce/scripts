function se() {
  findPath="${1:-${__SCRIPTS_DIR}}"
  file="$(find "${findPath}" -type f 2>/dev/null |grep -v -e '\.git' |fzf -i)"
  [ -n "$file" ] && vim "$file"
}
