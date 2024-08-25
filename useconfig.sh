#! /bin/bash

echo "trying to create backup directory:"
mkdir ~/.dotfiles.bak
mkdir ~/.dotfiles.bak/.config
mkdir ~/.dotfiles.bak/.config/tmux

echo
echo "backing up configs"
cp -rfv ~/.config/fish ~/.dotfiles.bak/.config
cp -rfv ~/.config/starship.toml ~/.dotfiles.bak/.config
cp -rfv ~/.config/fastfetch ~/.dotfiles.bak/.config
cp -rfv ~/.config/tmux/tmux.conf ~/.dotfiles.bak/.config/tmux
cp -rfv ~/.config/alacritty ~/.dofiles.bak/.config

echo
echo "putting new configs into .config"
cp -rfv .config/fish ~/.config
cp -rfv .config/starship.toml ~/.config
cp -rfv .config/fastfetch ~/.config
cp -rfv .config/tmux ~/.config
cp -rfv .config/alacritty ~/.config

echo
echo "success"
