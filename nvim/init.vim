syntax on
filetype plugin on

set nocompatible
set number
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set mouse=a
set noswapfile
set relativenumber

" Vim Leader key remap
let mapleader = ","

" General colors
let &t_ut=''

" =======================
" Plugins
" =======================

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'dylanaraps/wal.vim'


call plug#end()

" =======================
" Themes
" =======================

set background=dark
colorscheme wal

" Transparent bg
hi Normal guibg=NONE ctermbg=NONE

" ==========================
" Files indentation
" ==========================

autocmd FileType xml setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType vue setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType dockerfile setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 softtabstop=2 expandtab

" =======================
" Tabs management
" =======================

nmap <leader>1 :bprev<cr>
nmap <leader>2 :bnext<cr>
nmap <tab> :bnext<cr>
nmap <leader>d :bd<cr>

" =======================
" Folds
" =======================

augroup remember_folds
  autocmd!
  autocmd BufWrite * mkview
  autocmd BufRead * silent! loadview
augroup END

" =======================
" FZF
" =======================

" Custom key bindings
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><C-f> :Rg<CR>

" Layout (bottom pane)
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.3, 'relative': v:true, 'yoffset': 1.0 } }

let g:fzf_buffers_jump = 1
let g:fzf_action = {
\ 'ctrl-x': 'split',
\ 'ctrl-v': 'vsplit' }

" \ 'enter': 'tab split',

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" =======================
" Airline
" =======================

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wal'

" =======================
" Lightline
" =======================

set laststatus=2

let g:lightline = {
      \ 'enable': {
      \   'tabline': 0
      \ },
      \ }

" =======================
" Fugitive
" =======================

nmap <leader>gs :Git status<cr>
nmap <leader>gc :Git commit<cr>
nmap <leader>ga :Gwrite<cr>
nmap <leader>gl :Git log<cr>
nmap <leader>gd :Git diff<cr>

" ==========================
" Moving lines
" ==========================

nnoremap <Down> :m .+1<cr>==
nnoremap <Up> :m .-2<cr>==
inoremap <Down> <Esc>:m .+1<cr>==gi
inoremap <Up> <Esc>:m .-2<cr>==gi
vnoremap <Down> :m '>+1<cr>gv=gv
vnoremap <Up> :m '<-2<cr>gv=gv


" ==========================
" Clipboard stuff
" ==========================

" Copy to clipboard with leader+y
vnoremap <silent><Leader>y "yy <Bar> :call system('xclip -selection clipboard', @y)<CR>

