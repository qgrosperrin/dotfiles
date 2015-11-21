#!/usr/bin/env zsh 

dotfiles="$HOME/.zshrc $HOME/.zshuery $HOME/.bash_profile $HOME/.tmux.conf"
rsync -avh `echo ${dotfiles}` .

git add --all
git commit -am "updating dotfiles"
git push origin master
