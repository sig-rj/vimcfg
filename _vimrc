" Force read encoding
set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/vimfiles/bundle/Vundle.vim/
call vundle#begin('~/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'

Plugin 'ctrlpvim/ctrlp.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'ludovicchabant/vim-gutentags'

Plugin 'flazz/vim-colorschemes'

Plugin 'mattn/emmet-vim'

Plugin 'pangloss/vim-javascript'

Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

set t_Co=256   " This is may or may not needed.

set background=dark

colorscheme hybrid

" works on windows
set guifont=Consolas:h11:cANSI

set lazyredraw        " redraw only when we need to.
set wildmenu          " visual autocomplete for command menu
set backspace=start,eol,indent " Allow backspace in insert mode

set noeb vb t_vb=     " no bepp and no flash
if has('autocmd')
  autocmd GUIEnter * set vb t_vb=
endif

set hlsearch " Search highlight
set ignorecase " Search ignore case
set nowrap
set autoindent
set expandtab " Tab characters entered will be changed to spaces
set shiftwidth=4 softtabstop=4 " Number of space characters inserted for indentation

set splitbelow " New window is put below the current one
set splitright " New window is put right of the current one

set nobackup
set nowritebackup
set noswapfile

" Remove GUI Bars
set guioptions-=T
set guioptions-=t
set guioptions-=L
set guioptions-=l
set guioptions-=m
set guioptions-=r

autocmd BufWritePre * :%s/\s\+$//ei " Remove all trailing whitespaces at save

" Space as leader
map <space> <leader>

set number

" Ignore some directories
let NERDTreeIgnore=['node_modules', 'bower_components', 'tmp', 'vendor']
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|tmp\|vendor\|DS_Store\|git'

"NERDTree auto load
autocmd vimenter * NERDTree

" Toggle NERDTree
nmap <silent> <Leader>nt :NERDTreeToggle<CR>

" Toggle Tagbar
nmap <silent> <Leader>tt :TagbarToggle<CR>

" NERD Commenter: <Leader>c to toggle comments
map <Leader>c <plug>NERDCommenterToggle

