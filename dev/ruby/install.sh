#!/usr/bin/env sh

sudo apt install -y libssl-dev libreadline-dev zlib1g-dev libpq-dev libsqlite3-dev libxml2-dev

ln -fs ~/.dotfiles/dev/ruby/.gemrc ~/.gemrc
ln -fs ~/.dotfiles/dev/ruby/.pryrc ~/.pryrc

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-each.git ~/.rbenv/plugins/rbenv-each
