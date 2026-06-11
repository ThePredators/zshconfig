alias reload="source /Users/$(whoami)/.zshrc"

ipp() {
  dig +short myip.opendns.com @resolver1.opendns.com;
}

fdns() {
  sudo dscacheutil -flushcache;
  sudo killall -HUP mDNSResponder;
  sudo killall -9 mDNSResponder mDNSResponderHelper;
  sudo launchctl stop homebrew.mxcl.dnsmasq;
  sudo launchctl start homebrew.mxcl.dnsmasq;
  echo “MacOS DNS cache has been cleared!!!”;
}

b64_encode() {
	echo $@ | base64;
}

b64_decode() {
	echo $@ | base64 --decode;
}

chmod_scripts() {
	chmod +x /Users/$(whoami)/zshconfig/scripts/**/*.sh;
	# multi folders : scripts/**/*.sh
}

setup_zsh(){
  chmod_scripts;
  bash /Users/$(whoami)/zshconfig/scripts/setup-terminal.sh;
}
