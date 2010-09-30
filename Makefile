install: install-vim

install-vim:
	rm -rf ~/.vim ~/.vimrc ~/.gvimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

