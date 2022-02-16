if [[ "$IS_MACOS_GT_11" == true ]]; then
	## Homebrew Path : BigSure+
	HBP=/opt/homebrew
	export PATH=$HBP/bin:$PATH
else
	HBP=/usr/local
	export PATH=$HBP/bin:$PATH
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
	export PATH="~/Applications/calibre.app/Contents/MacOS/:$PATH"
fi