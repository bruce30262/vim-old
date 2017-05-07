" basic setting
set nu
set shiftwidth=4
set tabstop=4
set cursorline
set hls
set expandtab
set noswapfile
set nowrap " don't split line
set sidescroll=1
syntax on

" color
color desert

" key mapping
nmap <F7> gT
nmap <F8> gt
set pastetoggle=<F9>
nmap <F10> <esc>:set list!<CR>
imap <F10> <esc>:set list!<CR>

" status line
set ls=2                                                " laststatus=2
set statusline=%<%F                                     " file name
set statusline+=\ [%{&fileencoding},%{&fileformat}]     " encoding + fileformat
set statusline+=%=                                      " move to right
set statusline+=%6*\ \ line:%l/%L\ col:%03c\ (%03p%%)\  " line number column /total (%)
set statusline+=%0*\ \ %m%r%w\ %P\ \                    " Modified? Readonly? Top/bot.

" wild mode (auto complete the vim cmd)
set wildmenu
set wildmode=list:longest,full

" spell check
" toggle spell checl
map <F2> :set spell!<CR><Bar>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>
imap <F2> <esc>:set spell!<CR><Bar>:echo "Spell check: " . strpart("OffOn", 3 * &spell, 3)<CR>
" spell check color setting
hi clear SpellBad
hi SpellBad term=underline cterm=underline ctermfg=red

execute pathogen#infect()
filetype plugin indent on
nnoremap <silent> <F5> :NERDTree<CR>

" pwning script for CTF
command PPP execute ":0r ~/CTF-master/script/exp_template.py | :20,87fold | :91,94fold | :89ma a"
