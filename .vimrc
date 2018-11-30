set number
hi Comment guifg=Green
colorscheme desert
syntax on
filetype on
set autoindent
set smartindent
set showmatch
set ruler
set cursorline
set incsearch
set guifont=Courier_new:h14:b:cDEFAULT
set backspace=2
set ts=2
set expandtab
set langmenu=en_us
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,chinese,latin-1
if has("win32")
 set fileencoding=chinese
else
 set fileencoding=utf-8
endif
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_CN.utf-8
