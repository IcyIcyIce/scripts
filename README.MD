# Personal scripts repository
## Idea
Just keeping my scripts versioned in a place, that might help someone. I usually keep them in `${HOME}/.scripts` so change that in [SOURCE_ME.sh](SOURCE_ME.sh)
## Installation
Install the [requirements](REQUIREMENTS). Example:
```bash
sudo dnf install $(cat REQUIREMENTS)
```
```bash
brew install $(cat REQUIREMENTS)
```
## Usage
Source the SOURCE_ME.sh script in your profile, maybe change the path in it. Example:
```bash
###############################################
# Uncomment any line to disabled said feature #
###############################################
#  export __DISABLE_FZF=true
[ -f "${HOME}/.scripts/SOURCE_ME.sh" ] && source "${HOME}/.scripts/SOURCE_ME.sh"
```
