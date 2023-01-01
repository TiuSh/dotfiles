export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(macos git tmux node npm yarn bundler zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh_aliases
source $HOME/.profile

# ZSH syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# FZF Mappings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Enable true color & italic support
export TERM="xterm-256color-italic"

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

# Enable local config file
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi
