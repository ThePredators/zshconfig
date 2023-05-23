
# wls M/G/T
wls() {
	echo "Options: M or G or T";
	watch ls -l --block-size=$@;
}

lls() {
	echo "Options: M or G or T";
	ls -lSr --block-size=$@;
}

## Open new finder tab with the folder
nt(){
	osascript -e "tell application \"Finder\"
    activate
    set t to target of Finder window 1
    set toolbar visible of window 1 to true
	end tell
	tell application \"System Events\"
	    keystroke \"t\" using command down
	end tell
	tell application \"Finder\"
	    set target of Finder window 1 to POSIX file \"`pwd`\"
	end tell" 1> /dev/null
}

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

ip() {
  ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\  -f2;
}

ipext() {
  wget -q -O - ipinfo.io/ip;
}

shp() {
	chmod +x $SCRIPTS_PATH/**.sh;
	chmod +x $SCRIPTS_PATH/*/**.sh;
}

dspace() {
	df -h;
}

dir_space() {
	du -sh $PWD;
}

cpd() {
	pbcopy < $@;
}

http() {
	http-server $@;
}

timestamp() {
	echo $(date +%s);
}

rsft2() {
	rsync -avz $1 $2;
}

# Convert Pictures to PDF
pics_to_pdf() {
	# brew install imagemagick
	# pip3 install img2pdf
	TS=$(timestamp);
	# convert *.jp* -auto-orient $TS.pdf;
	img2pdf *.jp* --output $TS-noloss.pdf;
}

search() {
	if [[ "$1" == "-f" ]]; then
		## -e 'pattern'
		## --include=\*.{c,h}
		## --exclude=\*.o
		## --exclude-dir={dir1,dir2,*.dst}
		grep -rnw "$2" .;
	elif [[ "$1" == "-g" ]]; then
		## to avoid certain strings add : ! -name "*:*"
		find . -name "*$2*" -print;
	fi
}

b64_encode() {
	echo $@ | base64;
}

b64_decode() {
	echo $@ | base64 --decode;
}

isoc() {
	hdiutil makehybrid -iso -joliet -o $1.iso "$2";
}
