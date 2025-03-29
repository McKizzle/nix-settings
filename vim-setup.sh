#!/usr/bin/env sh

# Copies all of the relvant files and configures the current user account. 
# Setup Vundle and the default .vimrc configuration.
if [ -d $HOME/.vim/bundle/Vundle.vim ]; then 
    ls -lA; 
else 
    echo "Vundle does not exist. Cloning to the .vim directory."; 
    git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
fi;

if [ -f vimrc ]; then
    VIMRC=$(readlink -f vimrc);
    ln -s "$VIMRC" "$HOME/.vimrc"
else 
    echo "Cannot find the vimrc file. Aborting configuration";
    exit 1
fi;

DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
if [ -n "$DATA_HOME" ]; then
    mkdir -p "$DATA_HOME/vim-tmp/swap/"
    mkdir -p "$DATA_HOME/vim-tmp/backup/"
    mkdir -p "$DATA_HOME/vim-tmp/undo/"
else
    echo "The env variable XDG_DATA_HOME has not been found. Aborting the operation." 
    exit 1
fi;

vim +PluginInstall +qall

