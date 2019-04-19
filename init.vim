syntax on
set noshowmode
set scrolloff=5 " Keep 3 lines below and above the cursor
call plug#begin('~/.vim/plugged')

"Molokai theme
Plug 'morhetz/gruvbox'
"Vim-Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
filetype plugin indent on
"Deoplete, Deoplete-go, & Gocode
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-go'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
"Deoplete Jedi
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
"Airline & Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Fugitive
Plug 'tpope/vim-fugitive'
"Surround
Plug 'tpope/vim-surround'
"NERDtree
Plug 'scrooloose/nerdtree'
"GitGutter
Plug 'airblade/vim-gitgutter'
"SimpylFold
Plug 'tmhedberg/simpylfold'
"Ultisnips
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Tagbar
Plug 'majutsushi/tagbar'
"python-mode
Plug 'klen/python-mode', { 'branch': 'develop' }
"Kubernetes
Plug 'andrewstuart/vim-kubernetes'
"Tmuxline
Plug 'edkolev/tmuxline.vim'
"Docker
Plug 'docker/docker'
"Multi-Cursor
Plug 'terryma/vim-multiple-cursors'
"fxf
Plug 'junegunn/fzf'
"Auto-pairs
Plug 'jiangmiao/auto-pairs'
"TMUX -Nav
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


"------------------------------------------------------------------------------
" Deoplete
"------------------------------------------------------------------------------
" Run deoplete.nvim automatically
let g:deoplete#enable_at_startup = 1
" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

"------------------------------------------------------------------------------
"Deoplete & Jedi
"------------------------------------------------------------------------------
let g:deoplete#sources#jedi#statement_length = 50
let g:deoplete#sources#jedi#enable_typeinfo = 1
let g:deoplete#sources#jedi#show_docstring = 0
let g:deoplete#sources#jedi#ignore_errors = 0
"------------------------------------------------------------------------------
" Airline & Theme
"------------------------------------------------------------------------------
let g:rehash256 = 1
let g:airline_theme='gruvbox'
set background=dark
set number
colorscheme gruvbox
let g:gruvbox_italic=1

set laststatus=2

"------------------------------------------------------------------------------
"NERDtree
"------------------------------------------------------------------------------

map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-b> :NERDTreeToggle<CR>

"------------------------------------------------------------------------------
" GitGutter
"------------------------------------------------------------------------------
let g:gitgutter_max_signs = 500  " default value

"------------------------------------------------------------------------------
" SimpylFold
"------------------------------------------------------------------------------
let g:SimpylFold_docstring_preview = 1


"------------------------------------------------------------------------------
"Ultisnips
"------------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


"------------------------------------------------------------------------------
" Tagbar
"------------------------------------------------------------------------------
nmap <8> :TagbarToggle<CR>


"------------------------------------------------------------------------------
" Python-mode
"------------------------------------------------------------------------------
let g:pymode_python = 'python3'


let g:tmuxline_powerline_separators = 0
let g:airline#extensions#tmuxline#enabled = 0


let g:AutoPairsFlyMode = ''
let g:AutoPairsShortcutToggle = ''



let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>
