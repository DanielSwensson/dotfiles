set path+=**
set number
set colorcolumn=100
set tabstop=4
set nowrap
syntax enable
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
set guifont=Fira\ Code:h12
set autoread
let mapleader=","

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

call plug#begin()

Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'leshill/vim-json'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'github/copilot.vim'

call plug#end()

autocmd vimenter * ++nested colorscheme gruvbox
filetype off
filetype plugin on
filetype plugin indent on
nnoremap <leader>b f,2lXi<CR><Esc>

map <C-p> :GFiles<cr>
nmap <C-p> :GFiles<cr>
let g:fzf_layout = { 'down': '~40%' }

" let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:prettier#exec_cmd_async = 1

let g:prettier#config#arrow_parens = 'always'
"
" Source Vim configuration file and install plugins
nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
imap <M-8> <Plug>(copilot-previous)
imap <M-9> <Plug>(copilot-next)
