# vimrc-vundle-script
여러 리눅스 환경에서의 vimrc, vim plugin 파일 동기화를 위한 저장소

## Example Image
![Yowu's Vimrc Example Img](https://github.com/uyu423/vimrc-vundle-script/blob/master/example.png?raw=true)

## Installation
<pre>
$ git clone https://github.com/uyu423/vimrc-vundle-script ~/.vim/yowus_vimrc
$ ln -s ~/.vim/yowus_vimrc/.vimrc ~/.vimrc 
</pre>

## Add Molokai Color Scheme
<pre>
sudo wget -O /usr/share/vim/vim74/colors/molokai.vim https://raw.github.com/tomasr/molokai/master/colors/molokai.vim --no-check-certificate
</pre>
* If you using another vim version, modify colors parent directory path.
* If you want not using sudo privillege
<pre>
mkdir ~/.vim/colors
wget -O ~/.vim/colors/molokai.vim https://raw.github.com/tomasr/molokai/master/colors/molokai.vim --no-check-certificate
</pre>

## [Vundle](https://github.com/gmarik/Vundle.vim) Installation
<pre>
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
</pre>

## Install Plugins in .vimrc
<pre>
$ vim
: VundleInstall
</pre>

## Install Fonts for Airline Plugin
https://github.com/powerline/fonts/tree/master/
* Must be sure to install all kinds of fonts in the font directory

## Install JSHint Node Module for Javascript Syntax check
<pre>
sudo apt-get install npm && sudo npm install -g jshint
</pre>

## Install ctags package for TagList Plugin
### Debian
<pre>
$ sudo apt-get install ctags
</pre>
### Redhat
<pre>
$ sudo yum install ctags
</pre>

## enjoy vim !
