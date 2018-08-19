#!/bin/bash
echo "安装将花费一定时间，请耐心等待直到安装完成^_^"
if which apt-get >/dev/null; then
	sudo apt-get install -y vim vim-gnome ctags xclip astyle python-setuptools python-dev git
elif which yum >/dev/null; then
	sudo yum install -y gcc vim git ctags xclip astyle python-setuptools python-devel	
fi

##Add HomeBrew support on  Mac OS
if which brew >/dev/null;then
    echo "You are using HomeBrew tool"
    brew install vim ctags git astyle
fi

sudo easy_install -ZU autopep8 
sudo ln -s /usr/bin/ctags /usr/local/bin/ctags
echo "数据备份中..."
mkdir ~/.back
mv -f ~/.vim ~/.back/.vim_old
mv -f ~/.vimrc ~/.back/.vimrc_old
mv -f ~/.vimrc.bundles ~/.back/.vimrc.bundles_old

cd ~/ && git clone https://gitee.com/whatdy/vim_plugin.git
cp -r ~/vim_plugin/vim ~/.vim
cp ~/.vim/.vimrc ~/.vimrc
cp ~/.vim/.vimrc.bundles ~/.vimrc.bundles

echo "安装完成"
