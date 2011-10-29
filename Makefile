CONFIG = ~/.vim/vimrc
CONFIG_SYMLINK = ~/.vimrc

.PHONY: all
all: init

.PHONY: init
init:
	git submodule update --init

.PHONY: install
install: ${CONFIG_SYMLINK}

${CONFIG_SYMLINK} : ${CONFIG}
	ln -s $< $@

.PHONY: update
update:
	git pull

.PHONY: clean
clean:
	rm -i ${CONFIG_SYMLINK}

.PHONY: help
help:
	@echo 'Initializes and prepares this .vim configuration.'
	@echo 'Targets (default: init):'
	@echo '  init    - initializes and updates git submodules.'
	@echo '  install - creates links to the supplied configuration.'
	@echo '  update  - updates this configuration from its git repository.'
	@echo '  clean   - removes generated links.'

