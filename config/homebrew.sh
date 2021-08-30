if [[ "$IS_MACOS_GT_11" == true ]]; then
	## Homebrew Path : BigSure+
	HBP=/opt/homebrew
	export PATH=$HBP/bin:$PATH
else
	export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
fi