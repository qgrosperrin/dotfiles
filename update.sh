for i in $(ls ~/.dotfiles); do
	echo "rsync -avh --no-perms '~/'$i ."
done;

git add *
git commit -m "updating dotfiles"
git push origin master
