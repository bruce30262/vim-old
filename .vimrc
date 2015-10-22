set nu
set shiftwidth=4
set tabstop=4
set cursorline
set hls
set expandtab
syntax on

execute pathogen#infect()
filetype plugin indent on
nnoremap <silent> <F5> :NERDTree<CR>
