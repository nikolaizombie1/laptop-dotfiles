#!/usr/bin/env sh

DATE=$(date +%m-%d-%H-%M-%S)
scrot -ou  "$HOME/Pictures/$DATE"
xclip -sel clip -t image/png "$HOME/Pictures/$DATE"
