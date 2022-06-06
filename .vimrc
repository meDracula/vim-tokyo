set nocompatible

filetype plugin on
execute pathogen#infect()
syntax on
set encoding =utf-8
filetype plugin indent on

let mapleader = " "
nnoremap <Leader>s :update<cr>
nnoremap <C-t> :tabnew<CR>

set number
set relativenumber

"Fuzzy search
set path+=**
set wildmenu

"colorscheme
let g:tokyonight_style = 'night' "available: night, storm
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

"Airline
let g:airline_theme='deus'

"YAML
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"NerdTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree()) | q | endif
