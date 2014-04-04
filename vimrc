set nocompatible

filetype off

set nobackup
set ignorecase
set smartcase
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
syntax on
set number
set showmatch
set novisualbell
set noerrorbells
set noruler
set showcmd
set foldenable
set foldmethod=marker
set foldlevel=100

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jQuery'
Bundle 'SuperTab'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'ragtag.vim'
Bundle 'YankRing.vim'
Bundle 'http://github.com/rstacruz/sparkup.git', {'rtp': 'vim/'}
Bundle 'surround.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/Conque-Shell'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'docteurklein/vim-symfony'

filetype plugin indent on

map <F2> :NERDTreeToggle<CR>
map <F3> :NERDTreeFind<CR>:NERDTreeTabsOpen<CR>
let g:nerdtree_tabs_open_on_console_startup=0

""" Vamos a incursionar con los buffers ;-)
map <F4> :bp<CR>
map <F5> :bn<CR>

""" Windows
" Movimiento entre ventanas
map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h

" Switcheos horizontales y verticales
let mapleader = "º"
nmap <Leader>l <C-w>L
nmap <Leader>k <C-w>K
nmap <Leader>j <C-w>J
nmap <Leader>h <C-w>H

" Maximizar una ventana vertical y horizontalmente
nmap <Leader>m <C-w>\|<C-w>_
nmap <Leader>n <C-w>=

" MiniBufExpl
nmap <Leader>b :MBEToggle<cr>


"colorscheme marklar
colorscheme casu

autocmd BufNewFile,BufRead *.html.twig   set syntax=htmltwig

let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp\|vendor\|cache$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

