# .vim
My vim configuration, including plugins as git submodules. Tim Pope doens't like to go crazy... I do.


# Usage
cd ~

git clone https://github.com/cesalazar/.vim.git

cd .vim

git submodule init && git submodule update

cd .. && ln -s .vim/.vimrc .

