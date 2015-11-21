rsync -avh --no-perms ~/`ls ~/.dotfiles/` .

git add *
git commit -m "updating dotfiles"
git push origin master
