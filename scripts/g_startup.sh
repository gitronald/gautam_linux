#!/bin/sh

PLAY_DIR=/home/gautam/play
GL_DIR=$PLAY_DIR/gautam_linux
TODO_FILE=/home/gautam/tmp/TODO.txt

# Play machine specific startup
FILE=$GL_DIR/scripts/g_startup_play.sh
if [ -f $FILE ]; then
    $FILE &
fi

# Sociomantic specific startup.
FILE=$GL_DIR/g_startup_sociomantic
if [ -f $FILE ]; then
    $FILE &
fi

# Log latest boot time info.
FILE=$GL_DIR/scripts/boot_times_tracker.sh
if [ -f $FILE ]; then
    $FILE &
fi

# Open the todo file, if it exists.
if [ -f $TODO_FILE ]; then
    gedit $TODO_FILE &
fi

