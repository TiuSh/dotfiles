#!/usr/bin/env sh  

sudo apt install -y neovim libc6 libjansson4 libseccomp2 libxml2 libyaml-0-2 universal-ctags

# Install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir -p ~/.config/nvim

ln -fs ~/.dotfiles/neovim/coc-settings.json ~/.config/nvim/coc-settings.json
ln -fs ~/.dotfiles/neovim/UltiSnips ~/.config/nvim/UltiSnips
ln -fs ~/.dotfiles/neovim/init.vim ~/.config/nvim/init.vim
