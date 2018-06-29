set path+=**
set number
set colorcolumn=100
set tabstop=4
set nowrap
syntax enable
set background=dark
let g:solarized_termtrans = 1
colorscheme solarized
set mouse=a
set backspace=indent,eol,start
set nocompatible
set laststatus=2
set autoindent
set noexpandtab
set shiftwidth=4
set encoding=utf-8
set clipboard+=unnamed
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
Plug '/usr/local/opt/fzf'
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-lang/vim-elixir'
Plug 'leshill/vim-json'
Plug 'janko-m/vim-test'

call plug#end()

filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on
filetype plugin indent on
nmap <silent> t<C-n> :TestNearest<CR> " t Ctrl+n
nmap <silent> t<C-f> :TestFile<CR>    " t Ctrl+f
nmap <silent> t<C-s> :TestSuite<CR>   " t Ctrl+s
nmap <silent> t<C-l> :TestLast<CR>    " t Ctrl+l
nmap <silent> t<C-g> :TestVisit<CR>   " t Ctrl+g
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
nnoremap <leader>b f,2lXi<CR><Esc>

map <C-p> :Files<cr>
nmap <C-p> :Files<cr>
