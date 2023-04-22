#!/bin/sh

installer=$(mktemp -d)/dein_install.sh
wget https://raw.githubusercontent.com/Shougo/dein-installer.vim/master/installer.sh -O $installer
sh $installer --use-neovim-config $HOME/.local/share/dein

ln -sf $HOME/.vim/vimrc.vim $HOME/.config/nvim/init.vim

$HOME/.miniconda/bin/pip install autopep8 black flake8 isort mypy pynvim
