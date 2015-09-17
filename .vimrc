set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on           " required

" see :h vundle for more details or wiki for FAQ

" Plugin settings
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_python_checkers = []
let g:syntastic_aggregate_errors = 1

" Set UI
set nu " line numbers
set t_Co=256 " colors
colors zenburn
syntax on
set cursorline
set cursorcolumn
highlight CursorLine ctermbg=DarkGray
highlight CursorColumn ctermbg=DarkGray

" Inline folding
set cole=2 " conceal
" let g:javascript_conceal_function   = "λ"

" Set indentation
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" Nab trailing whitespace
match ErrorMsg '\s\+$'
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
nnoremap <silent> <Leader>rts :call TrimWhiteSpace()<CR>
autocmd FileWritePre * :call TrimWhiteSpace()
autocmd FileAppendPre * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre * :call TrimWhiteSpace()
