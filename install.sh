#!/bin/bash

dotfiles_dir=~/dotfiles

#==============
# Delete existing dot files and folders
#==============

sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.bash_logout > /dev/null 2>&1
sudo rm -rf ~/.profile > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -Rrf ~/.config > /dev/null 2>&1
sudo rm -Rrf ~/.dbus > /dev/null 2>&1

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============

ln -sf $dotfiles_dir/bashrc ~/.bashrc
ln -sf $dotfiles_dir/bash_logout ~/.bash_logout
ln -sf $dotfiles_dir/profile ~/.profile
ln -sf $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/config ~/.config
ln -sf $dotfiles_dir/dbus ~/.dbus

