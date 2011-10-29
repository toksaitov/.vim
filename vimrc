" Credit goes to +guns+
" http://stackoverflow.com/questions/1636771/post-your-vim-config/1639391#1639391

if version >= 700

    "------ Meta ------"

    if has("autocmd")
        " clear all autocommands! (this comment must be on its own line)
        autocmd!
    endif

    " Now it's possible to unzip/untar/svn-checkout/git-clone plugins to their
    "  own private directories in .vim/bundle
    call pathogen#infect()

    set nocompatible                " break away from old vi compatibility
    set fileformats=unix,dos,mac    " support all three newline formats
    set viminfo=                    " don't use or save viminfo files

    "------ Console UI & Text Display & Vim Behavior ------"

    set cmdheight=1                 " explicitly set the height of the command
                                    "  line
    set showcmd                     " show (partial) command in status line.
    set number                      " show line numbers
    set ruler                       " show current position at bottom
    set noerrorbells                " don't whine
    set visualbell t_vb=            " and don't make faces
    set lazyredraw                  " don't redraw while in macros
    set scrolloff=5                 " keep at least 5 lines around the cursor
    set wrap                        " soft wrap long lines
    set list                        " show invisible characters
    set listchars=tab:..,trail:.    " but only show tabs and trailing whitespace
    set report=0                    " report back on all changes
    set shortmess=atI               " shorten messages and don't show intro
    set wildmenu                    " turn on wild menu :e <Tab>
    set wildmode=list:longest       " set wildmenu to list choice
    set hidden                      " hides buffers instead of closing them
    set iskeyword+="_"              " word delimiters
    set spellsuggest=best,10        " show only 10 spell suggestions

    if has('syntax')
        syntax on
        " Remember that rxvt-unicode has 88 colors by default; enable this
        " only if you are using the 256-color patch
        if &term == 'rxvt-unicode'
            set t_Co=256
        endif

        if &t_Co > 2
            syntax on
        endif

        if &t_Co >= 256
            colorscheme railscasts
        endif
    endif

    " Show EOL type and last modified timestamp, right after the filename
    set statusline=%<%F%h%m%r\ [%{&ff}]\ (%{strftime(\"%H:%M\ %d/%m/%Y\",getftime(expand(\"%:p\")))})%=%l,%c%V\ %P

    set hlsearch                            " turn on highlighting for searched
                                            "  expressions
    set incsearch                           " highlight as we search however
    set matchtime=5                         " blink matching chars for .x
                                            "  seconds
    set mouse=a                             " try to use a mouse in the console
                                            "  (wimp!)
    set ignorecase                          " set case insensitivity
    set smartcase                           " unless there's a capital letter
    set completeopt=menu,longest,preview    " more autocomplete <Ctrl>-P options
    set nostartofline                       " leave my cursor position alone!
    set backspace=2                         " equiv to
                                            "  :set backspace=indent,eol,start

    set textwidth=80                        " we like 80 columns
    if exists("&colorcolumn")
        set colorcolumn=+1                  " highlight the next column
    endif

    set showmatch                           " show matching brackets
    set formatoptions=tcrql                 " t - autowrap to textwidth
                                            " c - autowrap comments to textwidth
                                            " r - autoinsert comment leader
                                            "  with <Enter>
                                            " q - allow formatting of comments
                                            "  with :gq
                                            " l - don't format already long
                                            "  lines

    "------ Indentation & Tabs ------"

    set autoindent                  " set the cursor at same indent as line
                                    "  above

    set smartindent                 " try to be smart about indenting (C-style)
    set expandtab                   " expand <Tab>s with spaces; death to tabs!
    set shiftwidth=4                " spaces for each step of (auto)indent
    set softtabstop=4               " set virtual tab stop (compat for 8-wide
                                    "  tabs)

    set tabstop=8                   " for proper display of files with tabs
    set shiftround                  " always round indents to multiple of
                                    "  shiftwidth

    set copyindent                  " use existing indents for new indents
    set preserveindent              " save as much indent structure as possible
    filetype plugin indent on       " load filetype plugins and indent settings

    "------ File Types ------"

    if has("autocmd")
        " Ruby
        autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

        " X/HTML & XML
        autocmd FileType html,htm,xhtml,xht,xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

        " CSS
        autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

        " JavaScript
        autocmd BufRead,BufNewFile *.json setfiletype javascript
        autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

        " CoffeeScript
        autocmd BufNewFile,BufReadPost *.coffee setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
    endif

    let javascript_enable_domhtmlcss=1

    "------ Key Remapping --------"

    " Clear current search highlight
    nmap <silent> ./ :nohlsearch<CR>

    " Forgot to sudo before editing a file
    cmap w!! w !sudo tee % >/dev/null

    " Taglist toggle
    command Tags TlistToggle

    " NERDTree toggle
    command Tree NERDTreeToggle

endif " version >= 700

