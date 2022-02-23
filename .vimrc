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
Plug 'deoplete-plugins/deoplete-clang'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mcchrish/nnn.vim'
call plug#end()
let g:deoplete#enable_at_startup = 1
let g:netrw_winsize = 25
let g:netrw_browse_split = 3
let g:netrw_banner = 0
autocmd FileType java setlocal omnifunc=javacomplete#Complete
filetype plugin on
syntax on
set number relativenumber
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"Opens up Netrw
map mx :Vexplore <CR> 
"Changes Current Window Directory to file directory 
map fc :lcd %:p:h <CR>
map fg :Guifont Hack:h18 <CR>
let g:ale_fixers = {'python': ['yapf'],
\'r': [ 'styler' ],
\}
" Markdown Settings"
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:UltiSnipsExpandTrigger="<c-l>"
let g:ale_python_pylint_options = '--rcfile .pylintrc'
