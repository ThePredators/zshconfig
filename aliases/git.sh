## Git + GitFlow : https://danielkummer.github.io/git-flow-cheatsheet/
alias gi='git init'
alias gc="git clone"
alias gch="git checkout"

alias grao="git remote add origin "
alias gru="git remote update"
alias grro="git remote rm origin "

alias ga="git add ."
alias gcam='git commit -a -m'

alias gps='git push'
alias gpsu='git push -u '
alias gpsuo='git push -u origin '

alias gpl='git pull'
alias gs="git status"

alias gsth="git stash"
alias gsthp="git stash pop"

alias gb="git branch"
alias gbdf="git branch -D "
alias gbd="git branch -d "

## GitFlow : 
alias gfi="git flow init"
alias gfr="git flow release start "
alias gfrf="git flow release finish "
alias gfhf="git flow hotfix finish "

gct() {
  TOKEN="<YOUR_TOKEN>"
  ORGA_OR_OWNER="$1"
  REPO="$2"
  git clone "https://${TOKEN}@github.com/${ORGA_OR_OWNER}/${REPO}.git";
}

grmf() {
	git fetch --all;
	git rm -f $@;
}

gffs() {
  git flow feature start $@;
} 

gfff() {
  git flow feature finish $@;
} 

gfhs() {
  git flow hotfix start $@;
}

gcpx() {
  git config --global http.proxy $PROXY;
  gc $@;
  git config --global --unset http.proxy;
}
