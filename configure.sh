# git
git config --global user.email "zmp@umich.edu"
git config --global user.name "Zach Pomerantz"

# vim
wget -O ~/.vimrc https://raw.githubusercontent.com/zzmp/setup/master/.vimrc

mkdir -p ~/.vim/colors
wget -O ~/.vim/colors/zenburn.vim https://raw.githubusercontent.com/jnurmine/Zenburn/master/colors/zenburn.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
