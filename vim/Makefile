INSTALL = install

VIM_DIRS := after/ftplugin \
	autoload \
	colors \
	doc \
	lib/nerdtree \
	nerdtree_plugin \
	plugin \
	syntax

VIM_FILES := after/ftplugin/css.vim \
	after/ftplugin/go.vim \
	after/ftplugin/html.vim \
	after/ftplugin/python.vim \
	after/ftplugin/scheme.vim \
	after/ftplugin/vimrc.vim \
	autoload/nerdtree.vim \
	colors/solarized.vim \
	doc/NERD_tree.txt \
	doc/tags \
	lib/nerdtree/bookmark.vim \
	lib/nerdtree/creator.vim \
	lib/nerdtree/key_map.vim \
	lib/nerdtree/menu_controller.vim \
	lib/nerdtree/menu_item.vim \
	lib/nerdtree/opener.vim \
	lib/nerdtree/path.vim \
	lib/nerdtree/tree_dir_node.vim \
	lib/nerdtree/tree_file_node.vim \
	nerdtree_plugin/exec_menuitem.vim \
	nerdtree_plugin/fs_menu.vim \
	plugin/NERD_tree.vim \
	syntax/go.vim \
	filetype.vim

default:

install: $(VIM_DIRS) $(VIM_FILES)
	$(INSTALL) -m 0644 vimrc $(DESTDIR)/.vimrc

$(VIM_DIRS): FORCE
	$(INSTALL) -d $(DESTDIR)/$@

$(VIM_FILES): FORCE
	$(INSTALL) -m 0644 $@ $(DESTDIR)/$@

.PHONY: FORCE
