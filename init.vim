if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set number

call plug#begin('~/.vim/plugged')
"AnyFold
Plug 'pseewald/vim-anyfold'
"Auto-pairs
Plug 'jiangmiao/auto-pairs'
"CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Fugitive
Plug 'tpope/vim-fugitive'
"Fuzzy Finder
Plug 'junegunn/fzf'
"Julia
Plug 'julialang/julia-vim'
"Lightline
Plug 'itchyny/lightline.vim'
"Nerd Commenter
Plug 'preservim/nerdcommenter'
"NERDtree
Plug 'scrooloose/nerdtree'
"Rust
Plug 'rust-lang/rust.vim'
"LanguageClient
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }
"Tmuxline
Plug 'edkolev/tmuxline.vim'
"Multi-Cursor
Plug 'terryma/vim-multiple-cursors'
"Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Gitgutter
Plug 'airblade/vim-gitgutter'
"Rainbow
Plug 'frazrepo/vim-rainbow'
"Tagbar
Plug 'majutsushi/tagbar'
"TMUX -Nav
Plug 'christoomey/vim-tmux-navigator'
"Tmuxline
Plug 'edkolev/tmuxline.vim'
call plug#end()


"------------------------------------------------------------------------------
"Anyfold
"------------------------------------------------------------------------------
filetype plugin indent on " required
syntax on                 " required

autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" or
autocmd Filetype <your-filetype> AnyFoldActivate " activate for a specific filetype

set foldlevel=0  " close all folds
" or
set foldlevel=99 " Open all folds

"------------------------------------------------------------------------------
"Indent-guide
"------------------------------------------------------------------------------
let g:indent_guides_enable_on_vim_startup = 1
"------------------------------------------------------------------------------
"Lightline
"------------------------------------------------------------------------------
if !has('gui_running')
  set t_Co=256
endif
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
"Vim-rainbow
"------------------------------------------------------------------------------
let g:rainbow_active = 1
