INSTALL = install
DESTDIR ?= $(HOME)


default:

install: install-git install-hg install-vim

install-git:
	$(INSTALL) -m 0644 git/gitconfig $(DESTDIR)/.gitconfig
	$(INSTALL) -d $(DESTDIR)/.git
	$(INSTALL) -m 0644 git/gitignore $(DESTDIR)/.git/gitignore

install-hg:
	$(INSTALL) -m 0644 hg/hgrc $(DESTDIR)/.hgrc

install-ssh:
	$(INSTALL) -d $(DESTDIR)/.ssh
	$(INSTALL) -m 0644 ssh/config $(DESTDIR)/.ssh/config

install-shell:
	$(INSTALL) -m 0644 shell/profile $(DESTDIR)/.profile

install-vim:
	$(MAKE) -C vim DESTDIR=$(DESTDIR) install
