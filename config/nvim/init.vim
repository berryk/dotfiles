if has('nvim-0.1.5')        " True color in neovim wasn't added until 0.1.5
  set termguicolors
endif

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

:nnoremap <Leader>w <C-w>

set splitbelow
set splitright

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim')) 
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif
call plug#begin('~/.config/nvim/plugged')

Plug 'nathanaelkane/vim-indent-guides'

call plug#end()
