#!/usr/bin/env sh

# Install oh my zsh
sudo apt install -y zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install fzf (https://github.com/junegunn/fzf#using-git)
# TODO: Upgrade fzf if already installed (https://github.com/junegunn/fzf#upgrading-fzf)
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

ln -fs ~/.dotfiles/zsh/.zsh_aliases ~/.zsh_aliases
ln -fs ~/.dotfiles/zsh/.zshenv ~/.zshenv
ln -fs ~/.dotfiles/zsh/.zshrc ~/.zshrc
