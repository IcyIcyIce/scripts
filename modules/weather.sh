function weather() {
  city="${1:-Hell}"
  curl "wttr.in/${city}"
}
