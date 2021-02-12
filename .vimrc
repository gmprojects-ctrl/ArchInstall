"Configuring Plug "
call plug#begin()
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'preservim/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
syntax on
set number relativenumber
let g:deoplete#enable_at_startup = 1
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
