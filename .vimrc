syntax on 
set number relativenumber
set background=dark
colorscheme spacecamp
set title

set visualbell
set noerrorbells

set hlsearch
set ignorecase
set incsearch
set smartcase

set autoindent
set smarttab
set tabstop=4
filetype plugin indent on

set encoding=utf-8

set noswapfile
set autoread
set confirm
set history=1000

execute pathogen#infect()
autocmd VimEnter * NERDTree | wincmd p
nnoremap <C-n> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
let g:NERDTreeWinPos = "right"
