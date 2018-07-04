#!/usr/bin/env zsh 

cd $HOME/.dotfiles
dotfiles="$HOME/.zshrc $HOME/.zshuery $HOME/.bash_profile $HOME/.tmux.conf $HOME/.vimrc $HOME/.redteam_helpers"
rsync -avh `echo ${dotfiles}` .

git add --all
git commit -am "updating dotfiles"
git push origin master

cd -
