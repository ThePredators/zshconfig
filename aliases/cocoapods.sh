alias pi="pod install"
alias pu="pod update"
alias pd="pod deintegrate"

# pod install + update
piu() {
  kill $(ps aux | grep 'Xcode' | awk '{print $2}');
  pod deintegrate;
  pod repo update;
  pod install;
  pod update;
  open -a Xcode *.xcworkspace;
}

# pod install + update behind proxy
piup() {
  https_proxy=$PROXY http_proxy=$PROXY piu;
}

pbxp() {
	yes | cp -rf $1 *.xcodeproj;
}