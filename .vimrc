"Configuring Plug "
call plug#begin()
Plug 'preservim/tagbar'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'davidhalter/jedi-vim'
call plug#end()
let g:deoplete#enable_at_startup = 1
let g:netrw_winsize = 25
let g:netrw_browse_split = 3
let g:netrw_banner = 0
autocmd FileType java setlocal omnifunc=javacomplete#Complete
syntax on
set number relativenumber
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
map mx :Vexplore <CR> 
let g:ale_fixers = {'python': ['yapf'],
\'r': [ 'styler' ],
\}
