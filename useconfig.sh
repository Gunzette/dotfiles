#! /bin/bash

echo "trying to create backup directory:"
mkdir ~/.dotfiles.bak
mkdir ~/.dotfiles.bak/.config
cp -rfv ~/.config/fish ~/.dotfiles.bak/.config

cp -rfv .config/fish ~/.config

echo "success"
