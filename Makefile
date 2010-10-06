install: install-vim install-git

install-vim:
	rm -rf ~/.vim ~/.vimrc ~/.gvimrc
	ln -s `pwd`/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc

install-git:
	rm -rf ~/.git ~/.gitconfig
	ln -s `pwd`/git ~/.git
	ln -s ~/.git/gitconfig ~/.gitconfig

