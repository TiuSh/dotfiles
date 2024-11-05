# Set preferred editor to nvim
export EDITOR="nvim"

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$N_PREFIX/bin:$PATH"
export PATH="$HOME/.dragonruby:$PATH"

# Local env variables
if [ -f ~/.profile.local ]; then
  source ~/.profile.local
fi

# Start SSH keychain
# eval `keychain --eval --quick --agents ssh id_rsa`

# asdf
if [ -f $HOME/.asdf/asdf.sh ]; then
  . "$HOME/.asdf/asdf.sh"
  . "$HOME/.asdf/completions/asdf.bash"
fi

# Rust package manager
if [ -f $HOME/.cargo/env ]; then
  . "$HOME/.cargo/env"
fi
