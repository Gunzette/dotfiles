#! /bin/bash

rm -rf ~/.dotfiles.bak

echo "trying to create backup directory:"
mkdir ~/.dotfiles.bak
mkdir ~/.dotfiles.bak/.config
mkdir ~/.dotfiles.bak/.config/tmux
mkdir ~/.dotfiles.bak/.config/nvim

echo
echo "backing up configs"
cp -rf ~/.config/fish ~/.dotfiles.bak/.config
cp -rf ~/.config/starship.toml ~/.dotfiles.bak/.config
cp -rf ~/.config/fastfetch ~/.dotfiles.bak/.config
cp -rf ~/.config/tmux/tmux.conf ~/.dotfiles.bak/.config/tmux
cp -rf ~/.config/alacritty ~/.dotfiles.bak/.config
cp -rf ~/.config/nvim/init.lua ~/.dotfiles.bak/.config/nvim/

echo
echo "putting new configs into .config"
cp -rf .config/fish ~/.config
cp -rf .config/starship.toml ~/.config
cp -rf .config/fastfetch ~/.config
cp -rf .config/tmux ~/.config
cp -rf .config/alacritty ~/.config
cp -rf .config/nvim/init.lua ~/.config/nvim/

echo
echo "success"
