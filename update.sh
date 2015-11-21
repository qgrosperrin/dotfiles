rsync -avh --no-perms --exclude "bootstrap.sh" --exclude "update.sh" `ls -a ~/.dotfiles` ~/.dotfiles

git add *
git commit -m "updating dotfiles"
git push origin master
