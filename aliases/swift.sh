alias spi="swift package init"
alias sb="swift build"
alias st="swift test"
alias sbe="swift package init --type executable"
alias sr="swift run"

spc() {
	mkdir $@ && cd $@ && spi;
}