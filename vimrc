set nocompatible                " Disable vi-compatibility
set t_Co=256

colorscheme xoria256
set guifont=Menlo-regular:h16
set guioptions-=T               " removes top toolbar
set guioptions-=r               " removes right hand scroll bar
set go-=L                       " removes left hand scroll bar
set linespace=15

set showmode                    " Always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4
set smarttab
set tags=tags
set softtabstop=4               " When hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default
set shiftwidth=4
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set nohlsearch                  " Don't continue to highlight searched phrases.
set incsearch                   " Make searches case-insensitive.
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell                  " no bloody beep!
set noerrorbells                " no f***ing beep!
set autowrite                   " save on buffer switch
set mouse=a

let mapleader = ","
let g:mapleader = ","

" Fast save
nmap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Easy escaping to normal mode
imap jj <esc>

" Auto change directory to match current file
nnoremap ,cd :cd %:p:h<cr>:pwd<cr>

" easier window management
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" resize vsplit
nmap <C-v> :vertical resize +5<cr>

nmap <C-b> :NERDTreeToggle<cr>

" show partial command in status line
set showcmd

" shortcut to column
nmap <space> :<cr>

" create split below
nmap :sp :rightbelow sp<cr>

" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSufrForward<cr>

highlight Search cterm=underline

" Swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Run PHPUnit tests
map <leader>t :!phpunit %<cr>

" Powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2                    " Always show the status line
set encoding=utf-8                  " Necessary to show Unicode glyphs
set noshowmode                      " Hide the default mode text (e.g. -- INSERT -- below the status line)

filetype plugin on
syntax on

set fileformat=unix
set encoding=utf-8
set number
syn on
 
"My prefered values :)
set nowrapscan
set foldmethod=marker
set hlsearch
 
let php_sql_query = 1 "Coloration des requetes SQL
let php_htmlInStrings = 1 "Coloration des balises HTML

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" PHP QA Tools For Vim - https://github.com/joonty/vim-phpqa
Bundle 'joonty/vim-phpqa.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
