# Default shell
export SHELL=/bin/zsh

# Set the current user as the default
export DEFAULT_USER=`whoami`

# Directories to be prepended to $PATH
declare -a dirs_to_prepend
dirs_to_prepend=(
  "/usr/bin"
  "/usr/local/sbin"
  "/usr/local/git/bin"
  "/usr/local/"
  "$HOME/.bin"
  "$HOME/.rvm/bin"
  "/Applications/Postgres.app/Contents/Versions/latest/bin" # Postgres.app cli tools
  "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" # Code CLI
)

# Explicitly configured $PATH
PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

for dir in ${(k)dirs_to_prepend[@]}
do
  if [ -d ${dir} ]; then
    # If these directories exist, then prepend them to existing PATH
    PATH="${dir}:$PATH"
  fi
done

unset dirs_to_prepend

export PATH

# Add Ruby and NPM installed bin
export PATH="$PATH:$(brew --prefix ruby)/bin"
export PATH="$PATH:$(brew --prefix)/share/npm/bin"

# Set language environment
export LANG=fr_FR.UTF-8

# Load NVM env variables
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
