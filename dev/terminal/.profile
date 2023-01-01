# Set preferred editor to nvim
export EDITOR="nvim"

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$N_PREFIX/bin:$PATH"
export PATH="$HOME/.dragonruby:$PATH"

# n
export N_PREFIX="$HOME/.n"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
if [ -x "$(command -v rbenv)" ]; then
  eval "$(rbenv init -)"
fi

# Local env variables
if [ -f ~/.profile.local ]; then
  source ~/.profile.local
fi

# Start SSH keychain
# eval `keychain --eval --quick --agents ssh id_rsa`

. "$HOME/.cargo/env"
