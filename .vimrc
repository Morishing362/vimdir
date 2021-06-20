set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
        Plugin 'preservim/nerdtree'
        Plugin 'dart-lang/dart-vim-plugin'
        Plugin 'dense-analysis/ale' 
call vundle#end()
filetype plugin indent on

syntax enable

colorscheme lucario

set number
set cursorline
set tabstop=4
set shiftwidth=4

function! _execAstyle()
        set cmdheight=3
        exe ":!astyle %"
        exe ":e!"
        set cmdheight=1
endfunction
command! ExecAstyle call _execAstyle()
augroup auto_style
        autocmd!
        autocmd bufWritePost *.cpp :ExecAstyle
        autocmd bufWritePost *.hpp :ExecAstyle
augroup END

if (has("termguicolors"))
        set termguicolors
endif

