    colorscheme solarized
    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc " don't use local version of .(g)vimrc, .exrc
    set background=light " we plan to use a dark background
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor
    "             |||||||      between joined lines
    "             |||||||+-- When a new match is created (showmatch)
    "             ||||||      pause for .5
    "             ||||||+-- Set buffer options when entering the
    "             |||||      buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line
    "             |||      when using :@r
    "             |||+-- Searching continues at the end of the match
    "             ||      at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on " syntax highlighting on
    filetype plugin on
    filetype indent on
    filetype plugin indent on " load filetype plugins/indent settings
    set backspace=indent,eol,start " make backspace a more flexible
    set nobackup " make NO backup files
    set clipboard+=unnamedplus " share windows clipboard
    set directory=~/.gibberish " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set noerrorbells " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,
                    \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list
    set undolevels=9999

    set autoread " autoread when file is changed from the outside
    set hlsearch "Highlight search things
    set incsearch "Make search act like search in modern browsers
    set magic "Set magic on, for regular expressions

    set cursorcolumn " highlight the current column
    set cursorline " highlight current line
    set incsearch " BUT do highlight as you type you
                   " search phrase
    set laststatus=2 " always show the status line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines
                     " betweens rows
    set list " we do what to show tabs, to ensure we get them
              " out of my files
    set listchars=tab:>-,trail:- " show tabs and trailing 
    set matchtime=5 " how many tenths of a second to blink
                     " matching brackets for
    set nohlsearch " do not highlight searched for phrases
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid
                         " 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    set sidescrolloff=10 " Keep 5 lines at the size
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current
    "              | | | | |  |   |      |  |     |       column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in
    "              | | | | |  |   |          square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
    set completeopt= " don't use a pop up menu for completions
    set expandtab " no real tabs please!
    set formatoptions=rq " Automatically insert comment leader on return,
                          " and let gq format comments
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=2 " auto-indent amount when using cindent,
                      " >>, << and stuff like that
    set softtabstop=2 " when hitting tab or backspace, how many spaces
                       "should a tab be (see expandtab)
    set tabstop=8 " real tabs should be 8, and they will show with
                   " set list on
    set smarttab

autocmd FileType scala source $HOME/.vim/scalacommenter.vim 
  autocmd FileType scala map <M-c> :call ScalaCommentWriter()<CR> 
  autocmd FileType scala map <M-f> :call ScalaCommentFormatter()<CR> 
  autocmd FileType scala map cm :call ScalaCommentWriter()<CR> 
  autocmd FileType scala map cf :call ScalaCommentFormatter()<CR> 
  autocmd FileType scala let b:scommenter_class_author='Paul Heideman' 
  autocmd FileType scala let b:scommenter_file_author='Paul Heideman' 
  autocmd FileType scala let g:scommenter_file_copyright_list = [ 
  \    'COPYRIGHT', 
  \] 
  autocmd FileType scala let b:scommenter_extra_line_text_offset = 20 
  autocmd FileType scala let b:scommenter_user_tags = [ 
  \["pre", 0, 1, 0], 
  \["post", 0, 1, 0], 
  \["requires", 1, 1, 0], 
  \["provides", 0, 1, 0] 
  \] 

    " Make Arrow Keys Useful Again {
    " }

    " Multiple line indent and de-indent {
        vmap <Tab> >gv
        vmap <S-Tab> <gv
    " }

    " Changing shiftwidth {
        map <leader>t2 :setlocal shiftwidth=2<cr>
        map <leader>t4 :setlocal shiftwidth=4<cr>
        map <leader>t8 :setlocal shiftwidth=8<cr>
    " }

    " Bash-like shortcuts {
        cnoremap <C-A> <Home>
        cnoremap <C-E> <End>
        cnoremap <C-K> <C-U>
        cnoremap <C-P> <Up>
        cnoremap <C-N> <Down>
    " }

    " Parenthesis/bracket expanding {
        vnoremap $1 <esc>`>a)<esc>`<i(<esc>
        vnoremap $2 <esc>`>a]<esc>`<i[<esc>
        vnoremap $3 <esc>`>a}<esc>`<i{<esc>
        vnoremap $$ <esc>`>a"<esc>`<i"<esc>
        vnoremap $q <esc>`>a'<esc>`<i'<esc>
        vnoremap $e <esc>`>a"<esc>`<i"<esc>
    " }

    " Map auto complete of (, ", ', [ {
        inoremap $1 ()<esc>i
        inoremap $2 []<esc>i
        inoremap $3 {}<esc>i
        inoremap $4 {<esc>o}<esc>O
        inoremap $q ''<esc>i
        inoremap $e ""<esc>i
    " }

    " Move a line of text using ALT+[jk] or Comamnd+[jk] on mac {
        nmap <M-j> mz:m+<cr>`z
        nmap <M-k> mz:m-2<cr>`z
        vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
        vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
    " }

    " Moving between windows {
        map <C-j> <C-W>j
        map <C-k> <C-W>k
        map <C-h> <C-W>h
        map <C-l> <C-W>l
    " }

    nmap <leader>w :w<cr> " Fast saving
    map <C-D> yyp " <C-d> duplicates line
    map <leader>cd :cd %:p:h<cr> " change to current buffer directory

" GUI Settings {
if has("gui_running")
    " Basics {
        if has('mac')
            set gfn=Inconsolata\ for\ Powerline:h11
        else
            set gfn=Inconsolata\ for\ Powerline\ Medium\ 11
        endif
        set guioptions=c
        set guioptions=-T
        set guioptions=-M
        set guitablabel=%t
        set mousehide " hide the mouse cursor when typing
        set autochdir " always switch to the current file directory
        set anti smooth
        set clipboard=unnamedplus
    " }
endif
" }

" Vundle stuff
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'rking/ag.vim'
Bundle 'oblitum/rainbow'
Plugin 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'mhinz/vim-signify'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Bundle 'kchmck/vim-coffee-script'
Plugin 'JuliaLang/julia-vim'
Plugin 'wting/rust.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'petRUShka/vim-opencl'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'jnurmine/Zenburn'
Bundle 'vim-scripts/blackdust.vim'

set vb

filetype plugin indent on     " required!

let g:agprg="/usr/local/bin/ag --column"
let g:rainbow_active = 1
" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" needed for syntastic
set shell=/bin/bash
" tag bar
nmap <F8> :TagbarToggle<CR>
" ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }
" Nerdtree stuff
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Ignore files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/target/*
