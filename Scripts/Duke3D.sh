#!/bin/bash

export DUKE_HOME_DIR="/media/fat/Games/Duke3D"

export DUKE_LIB_PATH="$DUKE_HOME_DIR/arm-linux-gnueabihf:$DUKE_HOME_DIR/arm-linux-gnueabihf/pulseaudio"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DUKE_LIB_PATH"
export SDL_SOUNDFONTS=$DUKE_HOME_DIR/SC55.sf2
export SDL_FORCE_SOUNDFONTS=1

echo $LD_LIBRARY_PATH

export HOME=$DUKE_HOME_DIR

[ -e /media/fat/Scripts/Duke3D.ini ] && source /media/fat/Scripts/Duke3D.ini

echo $HOME

cd $BLII_HOME_DIR

vmode -r 640 480 rgb32
taskset 03 $DUKE_HOME_DIR/chocolate-duke3d
