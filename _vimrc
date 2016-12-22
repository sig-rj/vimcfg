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

Plugin 'mattn/emmet-vim'

Plugin 'pangloss/vim-javascript'

" Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'scrooloose/syntastic'

Plugin 'altercation/vim-colors-solarized'

Plugin 'nlknguyen/papercolor-theme'

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

colorscheme PaperColor

" colorscheme solarized

set guifont=Consolas:h11:cANSI

autocmd vimenter * NERDTree

set number