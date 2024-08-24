#! /bin/bash

echo "trying to create backup directory:"
mkdir ~/.dotfiles.bak
mkdir ~/.dotfiles.bak/.config

cp -rfv ~/.config/fish ~/.dotfiles.bak/.config
cp -rfv ~/.config/starship.toml ~/.dotfiles.bak/.config
cp -rfv ~/.config/fastfetch ~/.dotfiles.bak/.config

cp -rfv .config/fish ~/.config
cp -rfv .config/starship.toml ~/.config
cp -rfv .config/fastfetch ~/.config

echo "success"
