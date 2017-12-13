#!/usr/bin/env fish

# Create necessary directories
mkdir -p ~/.config/fish
mkdir -p ~/.config/nvim

# Use *stow* as a dotfile manager

# Destory symbolic links
stow -v -t ~/.config/fish fish
stow -v -t ~/.config/nvim nvim
