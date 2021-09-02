ln -s $HOME/.vim/vimrc.vim $HOME/.vimrc

mkdir -p $HOME/.config/nvim
ln -s $HOME/.vim/vimrc.vim $HOME/.config/nvim/init.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh)" -- $HOME/.vim/bundles/dein

pip install pynvim
