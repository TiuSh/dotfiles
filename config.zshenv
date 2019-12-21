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

# Set language environment
export LANG=en_US.UTF-8

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
