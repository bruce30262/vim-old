" basic setting
set nu
set shiftwidth=4
set tabstop=4
set cursorline
set hls
set expandtab
set noswapfile
set sidescroll=1

" key mapping
nmap <F7> gT
nmap <F8> gt
set pastetoggle=<F9>
nmap <F10> <esc>:set list!<CR>
imap <F10> <esc>:set list!<CR>

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

" utf-8 encoding ( http://vim.wikia.com/wiki/Working_with_Unicode )
if has("multi_byte")
  set encoding=utf-8
  set termencoding=utf-8
  setglobal fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Load vim plugins ( manager: pathogen )
execute pathogen#infect()
" Detect file type, load their plugins and indent settings
filetype plugin indent on
syntax on
" map F5 to NERDtree
nnoremap <silent> <F5> :NERDTree<CR>
" override with custom snippets
let g:snipMate = { 'override' : 1 }

" Nord theme : https://github.com/arcticicestudio/nord-vim/
colorscheme nord

" powerline
set laststatus=2
set t_Co=256
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

" pwning script for CTF
command PPP execute ":0r ~/CTF-master/script/exp_template.py"

" force write with sudo tee trick
command ForceWrite execute ":w !sudo tee %"
" Use :ww instead of ForceWrite
cnoreabbrev ww ForceWrite
" :W == :w cause computer is too dumb to know I'm typing :w instead of :W
command W execute ":w"
command Wq execute ":wq"
command Q execute ":q"
" Eliminate SnipMate-deprecate warning message
let g:snipMate = { 'snippet_version' : 1 }
