# Copies all of the relvant files and configures the current user account. 

# Setup Vundle and the default .vimrc configuration.
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp vimrc ~/.vimrc
vim +PluginInstall +qall


