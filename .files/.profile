# Set preferred editor to nvim
export EDITOR="nvim"

# n
export N_PREFIX="$HOME/.n"

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/snap/bin:$PATH"
export PATH="/var/lib/flatpak/exports/share:$PATH"
export PATH="$HOME/.local/share/flatpak/exports/share:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$N_PREFIX/bin:$PATH"
export PATH="$HOME/.dragonruby:$PATH"

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
