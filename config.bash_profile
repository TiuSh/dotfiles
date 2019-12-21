# Bash Autocompletion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Bash Aliases
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Bash Helpers
if [ -f ~/.bash_fzf ]; then
. ~/.bash_fzf
fi

# PATH
export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Default editor
export EDITOR=nvim

# Default blocksize
export BLOCKSIZE=1k

# Use rippgrep with FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --smartcase --glob "!.git/*"'

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
