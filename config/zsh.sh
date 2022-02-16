export ZSH="/Users/$(whoami)/.oh-my-zsh"

## Powerlevel10k use cli : p10k configure
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  zsh-autosuggestions
  yarn
  web-search
  jsontools
  macports
  node
  sudo
  thor
  git
  docker
)

if [[ "$IS_MACOS_GT_11" == "true" ]]; then
  plugins+=("macos")
else
  plugins+=("osx")
fi

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=false
DISABLE_UPDATE_PROMPT=true

