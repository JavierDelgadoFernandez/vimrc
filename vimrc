call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

colorscheme gruvbox
set background=dark

set number

set tabstop=4
set shiftwidth=4
set expandtab

map <C-PageUp> :bp<cr>
map <C-PageDown> :bn<cr>

nmap <silent> <F12> <Plug>(coc-definition)

let g:coc_global_extensions = [
            \ 'coc-tsserver',
            \ 'coc-eslint'
            \ ]

let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_custom_ignore = 'node_modules\|git'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
