export ZSH="/Users/$(whoami)/.oh-my-zsh"

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  zsh-autosuggestions
  yarn
  web-search
  jsontools
  macports
  node
  osx
  sudo
  thor
  git
  docker
)

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=false
DISABLE_UPDATE_PROMPT=true

# Reload the plugin to highlight the commands each time Iterm2 starts
source $HBP/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

### VISUAL CUSTOMISATION ###

# Elements options of left prompt (remove the @username context)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
# Elements options of right prompt
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# Add a second prompt line for the command
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

# Add a space in the first prompt
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"

# Visual customisation of the second prompt line
local user_symbol="$"
if [[ $(print -P "%#") =~ "#" ]]; then
    user_symbol = "#"
fi
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"

# Change the git status to red when something isn't committed and pushed
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='red'

# Add a new line after the global prompt
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# Colorise the top Tabs of Iterm2 with the same color as background
# Just change the 18/26/33 wich are the rgb values
echo -e "\033]6;1;bg;red;brightness;18\a"
echo -e "\033]6;1;bg;green;brightness;26\a"
echo -e "\033]6;1;bg;blue;brightness;33\a"

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
# prompt spaceship