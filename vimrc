"=== Vundle
" necessary for Vundle invokation / installation
set nocompatible " be iMproved, required
filetype off " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree.git'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'UltiSnips'  " requires Vim v7.4+

" install markdown highlighter
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 0

" Plugin 'fisadev/vim-isort'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'klen/python-mode'

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
"===

syntax on

set expandtab " expand tab to spaces
set shiftwidth=4 " number of spaces to use for each step of (auto)indent.  Used for 'cindent', >>, <<, etc.
set softtabstop=4

set nu " print the line number in front of each line
set ic " ignore case in search patterns
set hlsearch " highlight search matches

" 256-color terminal
set t_Co=256
" colorscheme darkblue
colorscheme Benokai

"=== vim-isort configuration
" let g:vim_isort_map = '<C-i>'

"== Airline - always show
" see https://github.com/vim-airline/vim-airline/issues/20 for details
set laststatus=2

"== Syntatic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_aggregate_errors = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_python_flake8_args = "--max-line-length=120"

command! -nargs=0 -range SortWords call SortWords()
function! SortWords()
    normal! gvy
    call setreg('"', join(sort(split(getreg('"'), ", ")), ", "))
    " gv - reselect previously selected area
    normal! gv
    " "0p - paste from buffer
    normal! "0p
endfunction
