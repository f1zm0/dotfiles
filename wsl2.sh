#!/bin/bash

user_login_profile () {
    echo "Linking zsh login profile for user ..."
    ln -sf wsl2/.zlogin $HOME/.zlogin
}

user_login_profile
