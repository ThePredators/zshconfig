alias hbc="brew install --cask"
alias hbcl="brew cleanup"
alias hbi="brew install"
alias hbt="brew tap"
alias hbtu="brew untap"
alias hbu="brew update"

hbcp() {
	https_proxy=$PROXY http_proxy=$PROXY hbc $@;
}

brui() {
  brew update;
  brew install $@ --verbose;
}

# brew install behind proxy
bruip() {
  https_proxy=$PROXY http_proxy=$PROXY brew update;
  https_proxy=$PROXY http_proxy=$PROXY brew install $@ --verbose;
}