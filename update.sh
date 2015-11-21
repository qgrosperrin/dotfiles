#cp ~/.zshrc .
#cp ~/.bash_profile .
#cp ~/.bashrc .
#cp -R ~/.zshuery .
##cp ~/.tmux.conf .

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh"i --exclude "update.sh" \
       	--exclude "README.md" -avh --no-perms `ls ~/.dotfiles/` .;

git commit -a -m "updating dotfiles"
git push origin master

unset doIt 
