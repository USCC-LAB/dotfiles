#!/usr/bin/env fish

# Use *stow* as a dotfile manager

# Destory symbolic links
stow -v -D -t ~/.config/fish fish
stow -v -D -t ~/.config/nvim nvim
