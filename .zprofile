
#Directories
export PATH="$HOME/.local/bin:$HOME/.script/statusbar:$HOME/.script:$PATH"
export ZDOTDIR="$HOME/.config/zsh/"
export XINITRC="/home/jay/.xinitrc"
export DLDIR="$HOME/dl"
export PICTUREDIR="$HOME/pic"
export BGDIR="$PICTUREDIR/bg"
export PERVIKIDIR="$HOME/lol/personal_wiki/"
export BLENDERAPPDIR="/home/jay/blender/blender-3.1.2-linux-x64/"
export MUSICDIR='$HOME/Music/'
export SSDIR='$HOME/pic/screenshot/'
#dont remembers what it stand for
#export LOLMUDIR=

#defult application
export TERMINAL=st
export EDITOR=vim
export VIDIOPLAYER=mpv
export BROWSER=brave
export BLENDER="$BLENDERAPPDIR/blender"
export IMGVIEWER="sxiv"


#wal -R 
#cal
[ -z "${DISPLAY}" ] && [ "$TTY" = /dev/tty1 ] && exec startx
