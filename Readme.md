Vim Configuration Files
=======================

### Contents

#### General

* [pathogen.vim](http://github.com/tpope/vim-pathogen) — manage Vim plug-ins in
  one directory.

* [The NERD tree](http://github.com/scrooloose/nerdtree) — file browser and
  project drawer.

* [Tag List](http://vim-taglist.sourceforge.net) — source code browser (requires
  [Exuberant Ctags](http://ctags.sourceforge.net) to be installed).

#### Git Support

* [Vim Git Runtime Files](http://github.com/tpope/vim-git) — adds syntax, indent,
  and file type plug-in files for git.

* [fugitive.vim](http://github.com/tpope/vim-fugitive) — adds Vim commands to
  manage git repositories.

#### Syntax Files

* [Markdown Runtime Files](http://github.com/tpope/vim-markdown)

* [Improved JavaScript Support](http://github.com/pangloss/vim-javascript)

* [CoffeeScript Support](http://github.com/kchmck/vim-coffee-script)

* [Jade Template Engine Support](http://github.com/digitaltoad/vim-jade)

* [Syntax Highlighting for Stylus](http://github.com/wavded/vim-stylus)

* [Runtime Files for Haml, Sass, SCSS](http://github.com/tpope/vim-haml)

#### Color Scheme

* [Railscasts](http://www.vim.org/scripts/script.php?script_id=2175) —
  Railscasts color theme (for GUI and 256-color terminals).

![Screenshot of the Vim window](http://github.com/toksaitov/.vim/raw/master/Screenshot.png)

### Installation

    cd ~/
    git clone 'https://github.com/toksaitov/.vim.git'
    cd .vim
    make && make install # Init, update submodules, and create links to vimrc.

### Update

    cd ~/.vim
    make update # Pull the most recent version from the Git repository.

### Supplied Configuration

All preferences are described in `vimrc`.

### Contact Information

Toksaitov Dmitrii Alexandrovich, <dmitrii@toksaitov.com>

