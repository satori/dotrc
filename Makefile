INSTALL = install
DESTDIR = $(HOME)


default:

install: install-git install-hg install-vim

install-git:
	$(INSTALL) -m 0644 git/gitconfig $(DESTDIR)/.gitconfig
	$(INSTALL) -m 0644 git/gitignore $(DESTDIR)/.gitignore

install-hg:
	$(INSTALL) -m 0644 hg/hgrc $(DESTDIR)/.hgrc

install-vim:
	$(INSTALL) -d $(DESTDIR)/.vim/after/ftplugin
	$(INSTALL) -d $(DESTDIR)/.vim/autoload
	$(INSTALL) -d $(DESTDIR)/.vim/colors
	$(INSTALL) -d $(DESTDIR)/.vim/doc
	$(INSTALL) -d $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -d $(DESTDIR)/.vim/nerdtree_plugin
	$(INSTALL) -d $(DESTDIR)/.vim/plugin
	$(INSTALL) -d $(DESTDIR)/.vim/syntax
	$(INSTALL) -m 0644 vim/after/ftplugin/python.vim $(DESTDIR)/.vim/after/ftplugin
	$(INSTALL) -m 0644 vim/autoload/nerdtree.vim $(DESTDIR)/.vim/autoload
	$(INSTALL) -m 0644 vim/colors/solarized.vim $(DESTDIR)/.vim/colors
	$(INSTALL) -m 0644 vim/doc/NERD_tree.txt $(DESTDIR)/.vim/doc
	$(INSTALL) -m 0644 vim/doc/tags $(DESTDIR)/.vim/doc
	$(INSTALL) -m 0644 vim/lib/nerdtree/bookmark.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/creator.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/key_map.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/menu_controller.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/menu_item.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/opener.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/path.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/tree_dir_node.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/lib/nerdtree/tree_file_node.vim $(DESTDIR)/.vim/lib/nerdtree
	$(INSTALL) -m 0644 vim/nerdtree_plugin/exec_menuitem.vim $(DESTDIR)/.vim/nerdtree_plugin
	$(INSTALL) -m 0644 vim/nerdtree_plugin/fs_menu.vim $(DESTDIR)/.vim/nerdtree_plugin
	$(INSTALL) -m 0644 vim/plugin/NERD_tree.vim $(DESTDIR)/.vim/plugin
	$(INSTALL) -m 0644 vim/syntax/go.vim $(DESTDIR)/.vim/syntax
	$(INSTALL) -m 0644 vim/filetype.vim $(DESTDIR)/.vim
	$(INSTALL) -m 0644 vim/vimrc $(DESTDIR)/.vimrc
