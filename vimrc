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
" Plugin 'fisadev/vim-isort' " discuss isort within the group
Plugin 'scrooloose/syntastic'
" Plugin 'Lokaltog/vim-easymotion'

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

colorscheme darkblue

"=== vim-isort configuration
" let g:vim_isort_map = '<C-i>'

"== Syntatic options
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

command! -nargs=0 -range SortWords call SortWords()
function! SortWords()
    normal! gvy
    call setreg('"', join(sort(split(getreg('"'), ", ")), ", "))
    " gv - reselect previously selected area
    normal! gv
    " "0p - paste from buffer
    normal! "0p
endfunction
