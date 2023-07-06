#!/usr/bin/env fish

set -x DOTFILES $PWD
set -x CONFIG $HOME/.config

function symlink --argument target --argument destination
    
    # Check if the target is directory
    if test -d "$target" 
        
        # If destination directory doesn't exist, create it
        if not test -e "$destination/$target"
            mkdir $destination/$target
            echo "Created directory: $destination/$target"
        end
        
        # Loop over directory content to symlink files inside
        for file in $target/*
            symlink $file $destination
        end

    # Check if the target is regular file
    else if test -f "$target"

        # If destination file already exists, do nothing
        if test -e "$destination/$target"
            echo "Destination file $destination/$target already exists"
            ln -si $DOTFILES/$target $destination/$target
        
        # If everything is ok, create symlink between target and destination
        else
            echo "Linking $target to $destination/$target"
            ln -s $DOTFILES/$target $destination/$target
        end
    
    # If target is not file or directory, do nothing
    else
        echo "Target not valid"
    end
end

symlink kitty $CONFIG
symlink fish $CONFIG
symlink nvim  $CONFIG
symlink git $CONFIG
symlink tmux $CONFIG
symlink .ssh $HOME
