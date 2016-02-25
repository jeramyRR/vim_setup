set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-lang/vim-elixir'
" Code/project navigation
Plugin 'scrooloose/nerdtree'          " Project and file navigation
Plugin 'majutsushi/tagbar'            " Class/module browser
" others
Plugin 'bling/vim-airline'            " Lean & mean status/tabline for vim
Plugin 'fisadev/FixedTaskList.vim'    " Pending tasks list
Plugin 'rosenfeld/conque-term'        " Consoles as buffers
Plugin 'tpope/vim-surround'       " Parentheses, brackets, quotes, XML tags,
" and more
Plugin 'ctags.vim'
Plugin 'rking/ag.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this lin


" ColorScheme
set background=dark
colorscheme molokai 

syntax enable           " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ruler

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

let mapleader=","       " leader is comma
set laststatus=2
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" open ag.vim
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" ---------------
"  " NERDTree
"  " ---------------
nnoremap <leader>nn :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
 \&& b:NERDTreeType == "primary") | q | endif

" ---------------
"  " Indent Guides
"  " ---------------
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" Leader Commands
nnoremap <leader>t :CtrlPRoot<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>u :CtrlPCurFile<CR>
nnoremap <leader>m :CtrlPTag<CR>
nnoremap <leader>r :CtrlPFunky<CR>
nnoremap <leader>. :tag /^<C-R><C-w>[.]*<cr>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
