export ZSH="/Users/$(whoami)/.oh-my-zsh"

## Powerlevel10k use cli : p10k configure
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  zsh-autosuggestions
  zsh-syntax-highlighting
  yarn
  web-search
  jsontools
  macports
  node
  sudo
  thor
  git
  macos
  docker
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-history-substring-search/src

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=false
DISABLE_UPDATE_PROMPT=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f /Users/$(whoami)/zshconfig/_/.p10k.zsh ]] || source /Users/$(whoami)/zshconfig/_/.p10k.zsh