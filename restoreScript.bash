#!/usr/bin/env bash

cp redshift.conf ~/.config/
cp -r .doom.d ~/
cp -r awesome ~/.config/
cp .bashrc ~/
cp .zshenv ~/
cp .zshrc ~/
cp alacritty.yml ~/
cp starship.toml ~/.config
cp .xinitrc ~/
cp -r fish ~/.config/
cp -r Scripts ~/
sudo cp rfkill-unblock.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable rfkill-unblock.service --now
