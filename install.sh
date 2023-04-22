#!/bin/sh

wget https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh -O dein_installer.sh
sh dein_installer.sh --use-neovim-config $HOME/.local/share/dein

ln -sf $HOME/.vim/vimrc.vim $HOME/.config/nvim/init.vim

pip install autopep8 black flake8 isort mypy pynvim
