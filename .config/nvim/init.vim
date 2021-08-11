" https://neovim.io/doc/user/options.html
set number		" display line number
set smartindent
set smarttab
set autoindent
set ruler
set wildmenu
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set mouse=
set so=10

" powerlined
set laststatus=2

set foldmethod=syntax
set foldlevel=99
syntax on
colorscheme Potato
filetype indent plugin on

" keymaps
" panes (ctrl+ijkl)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

