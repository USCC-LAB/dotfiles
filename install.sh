#!/usr/bin/env fish

# Use *stow* as a dotfile manager

# Destory symbolic links
stow -v -t ~/.config/fish fish
stow -v -t ~/.config/nvim nvim
