INSTALL = install

VIM_DIRS := after/ftplugin \
	colors \
	doc \
	syntax

VIM_DIRS += $(shell find bundle -type d)

VIM_FILES := after/ftplugin/css.vim \
	after/ftplugin/go.vim \
	after/ftplugin/html.vim \
	after/ftplugin/python.vim \
	after/ftplugin/scheme.vim \
	after/ftplugin/vimrc.vim \
	colors/solarized.vim \
	doc/tags \
	syntax/go.vim \
	filetype.vim

VIM_FILES += $(shell find bundle -type f ! -name '.git*')

default:

install: $(VIM_DIRS) $(VIM_FILES)
	$(INSTALL) -m 0644 vimrc $(DESTDIR)/.vimrc

$(VIM_DIRS): FORCE
	$(INSTALL) -d $(DESTDIR)/.vim/$@

$(VIM_FILES): FORCE
	$(INSTALL) -m 0644 $@ $(DESTDIR)/.vim/$@

.PHONY: FORCE
