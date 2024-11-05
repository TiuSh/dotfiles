export ZSH=~/.oh-my-zsh

ZSH_THEME="agnoster"
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(macos git tmux node npm yarn bundler)

source $ZSH/oh-my-zsh.sh

source $HOME/.zsh_aliases
source $HOME/.profile

# ZSH syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

# FZF Mappings
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Run a command multiple times
function run() {
  number=$1
  shift
  for n in $(seq $number); do
    $@
  done
}

# Enable local config file
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mathieu/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mathieu/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mathieu/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mathieu/google-cloud-sdk/completion.zsh.inc'; fi
