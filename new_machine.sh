#!bin/bash

# Make sure you have installed the following packages
# bash, vim, i3, tmux, feh, picom, alacritty, and lf

# Create config files for multi use configs
cp ~/.config/bash/.bashrc_example ~/.config/bash/.bashrc
cp ~/.config/i3/config_example ~/.config/i3/config
cp ~/.config/lf/lfrc_example ~/.config/lf/lfrc

# Delete old configs
rm ~/.bashrc 
rm ~/.vimrc

# Create symbloc links 
ln -s ~/.config/vim/.vimrc ~/.vimrc
ln -s ~/.config/bash/.bashrc ~/.bashrc 





