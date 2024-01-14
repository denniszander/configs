#!bin/bash

# Make sure you have installed the following packages
# bash, vim, i3, tmux, feh, picom, alacritty, and lf

# Create config files for multi use configs
cp ~/.config/bash/.bashrc_all ~/.config/bash/.bashrc
cp ~/.config/vim/.vimrc_all ~/.config/vim/.vimrc
cp ~/.config/i3/config_all ~/.config/i3/config
cp ~/.config/lf/lfrc_all ~/.config/lf/lfrc

# Create symbloc links 
ln -s ~/.config/vim/.vimrc ~/.vimrc
ln -s ~/.config/bash/.bashrc ~/.bashrc 





