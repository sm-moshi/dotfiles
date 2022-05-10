#!/usr/bin/bash

cp ~/.zshrc .
echo "copied .zshrc"

cp ~/.config/konsolerc .
echo "copied konsolerc"

cp ~/.config/yakuakerc .
echo "copied yakuakerc"

cp ~/.config/nvim/init.vim .config/nvim/init.vim
echo "copied nvim-init.vim"

git add .
git commit -m "Updated: `date +'%Y-%m-%d %H:%M:%S'`"
git push
