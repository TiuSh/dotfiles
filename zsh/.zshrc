export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"
DISABLE_AUTO_TITLE="true"

plugins=(git tmux zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh_aliases
source $HOME/.profile

# FZF Mappings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Dircolors
# eval `dircolors ~/.dir_colors/dircolors`

# Add a new line before the prompt
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    print -n "%{%k%}"
  fi

  print -n "%{%f%}"
  CURRENT_BG=''

  #Adds the new line and ➜ as the start character.
  printf "\n ➜";
}

# Start keychain
/usr/bin/keychain -q --nogui $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOST-sh

# Enable local config file
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# Open HOME directory
cd $HOME
