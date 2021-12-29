# Set preferred editor to nvim
export EDITOR="nvim"

# n
export N_PREFIX="$HOME/.n"

# PATH
# export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/mnt/c/Program Files/Oculus/Support/oculus-runtime:/mnt/c/Program Files/Common Files/Oracle/Java/javapath:/mnt/c/Windows/system32:/mnt/c/Windows:/mnt/c/Windows/System32/Wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/:/mnt/c/Windows/System32/OpenSSH/:/mnt/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common:/mnt/c/Program Files/NVIDIA Corporation/NVIDIA NvDLISR:/mnt/c/Program Files/Docker/Docker/resources/bin:/mnt/c/ProgramData/DockerDesktop/version-bin:/mnt/c/Program Files/dotnet/:/mnt/c/Users/TiuSh/AppData/Local/Microsoft/WindowsApps:/home/tiush/.fzf/bin"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/local"
export PATH="/usr/local/git/bin:$PATH"
export PATH="/snap/bin:$PATH"
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
