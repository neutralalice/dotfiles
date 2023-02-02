#export PATH="$PATH:/home/arita/git/scripts"
if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
