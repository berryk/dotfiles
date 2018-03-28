if has('nvim-0.1.5')        " True color in neovim wasn't added until 0.1.5
  set termguicolors
endif

set mouse=a
set encoding=utf-8

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-S> <C-W>

:nnoremap <Leader>w <C-w>

tnoremap <C-h> <C-\><C-n><C-h>
tnoremap <C-j> <C-\><C-n><C-j>
tnoremap <C-k> <C-\><C-n><C-k>
tnoremap <C-l> <C-\><C-n><C-l>
tnoremap <Esc> <C-\><C-n>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

let g:ale_use_deprecated_neovim = 1
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

set splitbelow
set splitright

"set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
let g:airline_powerline_fonts=0
let g:tmuxline_powerline_separators = 0
"set noshowmode
let g:airline#extensions#tabline#enabled = 1

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'nathanaelkane/vim-indent-guides'
Plug 'christoomey/vim-tmux-navigator'
Plug 'w0rp/ale'
Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'edkolev/tmuxline.vim'

call plug#end()

"autocmd VimEnter * PlugInstall

"let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let g:airline_theme='dark_minimal'
"colorscheme nova
    call extend(g:airline_symbols, {
          \ 'readonly': "\u229D",
          \ 'whitespace': "\u2632",
          \ 'linenr': "\u2630 ",
          \ 'maxlinenr': "",
          \ 'branch': "\u16A0",
          \ 'notexists': "\u0246",
          \ 'crypt': nr2char(0x1F512),
          \ }, 'keep')

