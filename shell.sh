#!/bin/bash

zsh () {
    echo "Linking config for zsh and aliases ..."
    if [ -f "$HOME/.zshrc" ]; then
        echo "WARNING: $HOME/.zshrc already exists. Do you want to replace it with the one from dotfiles? (y/n)"
        read -r response
        if [[ $response =~ ^([yY][eE][sS]|[yY])$ ]]
        then
            rm $HOME/.zshrc
            stow --target=$HOME zsh
        else
            echo "Aborting..."
            exit 1
        fi
    fi

}

starship () {
    echo "Linking config for starship ..."
    stow --target=$HOME starship
}

tmux () {
    echo "Linking config for tmux ..."
    stow --target=$HOME tmux
}

git () {
    echo "Linking config for git ..."
    stow --target=$HOME git
}

# check that stow is installed
if ! [ -x "$(command -v stow)" ]; then
    echo 'Error: stow is not installed.' >&2
    exit 1
fi

zsh
starship
tmux
git
