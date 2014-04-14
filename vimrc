" General Options ------------- {{{
set nocompatible
set nobackup
set noswapfile
set ignorecase
set smartcase
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
filetype plugin indent on
set foldlevelstart=0
let mapleader = ","
nnoremap <leader>N :setlocal number!<cr>
" }}}

" Color Scheme ----------------- {{{
"colorscheme marklar
colorscheme casu
" }}}

" Search ------------ {{{
set hlsearch incsearch
noremap <silent><leader>. :nohlsearch<cr>
" }}}

" Syntax higlight ---- {{{
" Trailing whitespaces
highlight trailingWhitespaces ctermbg=green guibg=green
nnoremap <leader>w :match trailingWhitespaces /\v +$/<cr>
nnoremap <leader>W :match trailingWhitespaces //<cr>
" }}}

" Bundle configuration ---------- {{{

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
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'Floobits/floobits-vim'

" }}}

" NERDTree Configuration ---------- {{{
noremap <F2> :NERDTreeToggle<CR>
noremap <F3> :NERDTreeFind<CR>:NERDTreeTabsOpen<CR>
let g:nerdtree_tabs_open_on_console_startup=0
" }}}

" Ctrl-P Configuration -------- {{{

let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp\|vendor\|cache$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" }}}

" Buffers and Windows mappings --------- {{{
noremap <F4> :bp<CR>
noremap <F5> :bn<CR>

""" Windows
" Movimiento entre ventanas
noremap <C-l> <C-w>l
noremap <C-k> <C-w>k
noremap <C-j> <C-w>j
noremap <C-h> <C-w>h

" Windows sizes
noremap <C-left> 3<C-w><
noremap <C-right> 3<C-w>>
noremap <C-up> 3<C-w>+
noremap <C-down> 3<C-w>-

" Switcheos horizontales y verticales
nnoremap <Leader>l <C-w>L
nnoremap <Leader>k <C-w>K
nnoremap <Leader>j <C-w>J
nnoremap <Leader>h <C-w>H
nnoremap <Leader>- <C-w>-
nnoremap <Leader>+ <C-w>+

" Maximizar una ventana vertical y horizontalmente
nnoremap <Leader>m <C-w>\|<C-w>_
nnoremap <Leader>n <C-w>=

" MiniBufExpl
nnoremap <Leader>b :MBEToggle<cr>

" }}}

" Vim-notes plugin configuration ---------- {{{
noremap <C-t> <C-w>s:Note TODO Tasks:<CR>10<C-w>-
"au! BufNew * :if &ft=='notes' | res 10 | endif
" }}}

" Mappings para el modo insert ---------- {{{
" Paso a mayusculas la palabra que acabo de escribir
inoremap <c-u> <esc>vbUea

" Mapeo 'jk' para pasar del modo "insert" a "normal"
inoremap jk <esc>

" Autocompletado de llaves - Lo comento porque no es muy practico :-P
" inoremap { {}<esc>ha<cr><esc>kA<cr>
" }}}

" 'Forzamos' las nuevas costumbres ---------- {{{
" Me fuerzo la costumbre deshabilitando <esc> :-P
inoremap <esc> <nop>

" Lo mismo para las flechitas
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
" }}}

" Operator pending mappings ----------{{{
" Operar sobre la seleccion en el siguiente/anterior par de ()
onoremap in( :<c-u>normal! f(vi<cr>
onoremap il( :<c-u>normal! F)vi<cr>

" Mappings para editar rapido el .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" }}}

" Mappings utiles ---------- {{{
" Mappings para "wrappear" texto
vnoremap <leader>" <esc>`<i"<esc>`>a"<esc>
vnoremap <leader>' <esc>`<i'<esc>`>a'<esc>

" Ir al principio y al final de la linea actual
nnoremap H ^
nnoremap L $

" Abreviaturas
iabbrev @@ info@casu-net.com.ar
iabbrev ccopy Copyright 2014 Gabriel Casullo, all rights reserved
" }}}

" Status Line ---------- {{{
set statusline=%n-\       " Buffer number
set statusline+=%f        " Path to the file
set statusline+=%=        " Switch to the right side
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
" }}}

" Autocommands ----------- {{{
augroup filetype_htmltwig
    autocmd!
    autocmd BufNewFile,BufRead *.html.twig   set syntax=htmltwig
augroup END
" }}}

" Vimscript file settings ------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

