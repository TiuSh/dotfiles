source ~/.profile
source ~/.bash_aliases
source ~/.bash_fzf

# Bash Autocompletion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Default blocksize
export BLOCKSIZE=1k

# Use rippgrep with FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --smartcase --glob "!.git/*"'
