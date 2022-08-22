source ~/.profile
source ~/.bash_aliases
source ~/.bash_fzf

# Default blocksize
export BLOCKSIZE=1k

# Use rippgrep with FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden --smartcase --glob "!.git/*"'

. "$HOME/.cargo/env"
