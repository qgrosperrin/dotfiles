#!/usr/bin/env zsh 

local dotfiles=".zshrc .zshuery .bash_profile .tmux.conf"
rsync -ah --no-perms $(dotfiles) .

git add --all
git commit -am "updating dotfiles"
git push origin master
