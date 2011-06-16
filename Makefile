install: install-bash install-git install-vim

install-bash:
	rm -rf ~/.bash_aliases
	ln -s `pwd`/bash/aliases ~/.bash_aliases

install-git:
	rm -rf ~/.git ~/.gitconfig
	ln -s `pwd`/git ~/.git
	ln -s ~/.git/gitconfig ~/.gitconfig

install-vim:
	rm -rf ~/.vim ~/.vimrc ~/.gvimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc
