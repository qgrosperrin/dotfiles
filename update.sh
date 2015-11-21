#!/usr/bin/env zsh 

dotfiles="~/.zshrc ~/.zshuery ~/.bash_profile ~/.tmux.conf"
rsync -avh `echo ${dotfiles}` .

git add --all
git commit -am "updating dotfiles"
#git push origin master
