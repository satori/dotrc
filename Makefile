install: install-git install-hg install-vim

install-git:
	rm -rf ~/.git ~/.gitconfig
	ln -s $(PWD)/git ~/.git
	ln -s ~/.git/gitconfig ~/.gitconfig

install-hg:
	rm -rf ~/.hg ~/.hgrc
	ln -s $(PWD)/hg ~/.hg
	ln -s ~/.hg/hgrc ~/.hgrc

install-vim:
	rm -rf ~/.vim ~/.vimrc ~/.gvimrc
	ln -s $(PWD)/vim ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	ln -s ~/.vim/gvimrc ~/.gvimrc
