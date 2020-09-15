function brew_clean() {
  echo "Creating Brewfile"
  brew bundle dump
  echo "Removing unwanted dependencies"
  brew bundle --force cleanup
  rm -f Brewfile
  echo "Done"
}

function brew_list() {
  brew bundle dump
  cat Brewfile
  rm -f Brewfile
  echo "Done"
}
