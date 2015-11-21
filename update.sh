#!/usr/bin/env zsh 

local dotfiles=".zshrc .zshuery .bash_profile .bashrc .tmux.conf"
rsync -avh --no-perms $(dotfiles) .

git add -all
git commit -am "updating dotfiles"
git push origin master
