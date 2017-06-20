set path+=**
set number
set colorcolumn=100
set tabstop=2
set nowrap
syntax enable
set background=dark
colorscheme solarized
set mouse=a
set backspace=indent,eol,start
set nocompatible
set laststatus=2
set encoding=utf-8

call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'
Plug 'thoughtbot/vim-rspec'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-ruby/vim-ruby'

call plug#end()

filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on
filetype plugin indent on

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

autocmd FileType html setl sw=2 sts=2 et
autocmd FileType ruby set sw=2 sts=2 et
autocmd FileType eruby setl sw=2 sts=2 et
autocmd FileType javascript setl sw=2 sts=2 et
autocmd FileType scss setl sw=2 sts=2 et
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>
