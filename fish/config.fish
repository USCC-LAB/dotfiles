# set path example 
# See "help set" in fish shell 
# =====================================
# set -x PATH /usr/local/bin $PATH

# enable fish vim mode
# =====================================
# set -g  fish_key_bindings fish_vi_key_bindings

# Import local file
set -l local ~/.config/fish/config.fish.local
if test -e $local
    source $local
end

# Default editor setting
set -Ux EDITOR nvim
set -Ux VISUAL $EDITOR
