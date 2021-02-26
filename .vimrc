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
set number
set relativenumber
let mapleader=","

call plug#begin('~/.vim/plugged')

Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-ruby/vim-ruby'
Plug 'leshill/vim-json'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

call plug#end()

filetype off
let &runtimepath.=',~/.vim/bundle/ale'
filetype plugin on
filetype plugin indent on
nnoremap <leader>b f,2lXi<CR><Esc>

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --smart-case --glob "!.git" --color=always '.shellescape(<q-args>), 1, fzf#vim#with_preview(), <bang>0)
map <C-p> :GFiles<cr>
nmap <C-p> :GFiles<cr>
set grepprg=rg\ --vimgrep
let g:fzf_layout = { 'down': '~40%' }

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

let g:prettier#config#arrow_parens = 'always'
