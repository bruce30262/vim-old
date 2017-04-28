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
command PPP execute ":0r ~/CTF-master/script/exp_template.py | :20,87fold | :91,94fold | :89ma a"
