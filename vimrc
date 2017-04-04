"Enable pathogen
source ~/.vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
call pathogen#helptags()


" Setting for trinity
" Open and close all the three plugins on the same time
nmap <F7>   :TrinityToggleAll<CR>
" Open and close the srcexpl.vim separately
nmap <F8>   :TrinityToggleSourceExplorer<CR>
" Open and close the taglist.vim separately
nmap <F9>  :TrinityToggleTagList<CR>
" Open and close the NERD_tree.vim separately
nmap <F10>  :TrinityToggleNERDTree<CR>


" General Environment Settings "
set nocompatible		" no compatible to old vi
set bs=2				" make backspace work like most other apps
set history=50			" keep last 50 commands
set nu					" show the line number
set autoread			" auto read when file is changed from outside
set nobackup			" turn off auto backup
set ai					" auto indent
set runtimepath+=~/.vim
set cursorline			" show a underline on the line of cursor
set bg=dark				" color 
set fencs=utf-8,big5,cp950	" file encode 
set ru					" show cursor
set ignorecase			" ignore case when searching
set showmatch			" cursor shows matching ) and }
set showmode			" show current mode
set shiftwidth=4		" 
set softtabstop=4		" 
set tabstop=4			" 
set history=50			" keep 50 lines of command line history
set ruler				" show the cursor position all the time
set showcmd				" display incomplete commands
set incsearch			" do incremental searching
set clipboard=unnamed	" yank to the system register (*) by default
set wildchar=<TAB>		" start wild expansion in the command line using <TAB>
set wildmenu			" wild char completion menu
set wildignore=*.o,*.class,*.pyc " ignore these file types
set autoindent			" auto indentation
set copyindent			" copy the previous indentation on autoindenting
set smartcase			" ignore case if search pattern is all lowercase,case-sensitive otherwise
set smarttab			" insert tabs on the start of a line according to context


" disable sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


syntax on				" turn on syntax 
filetype on
filetype plugin on
filetype indent on


if has("gui_running") " GUI color and font settings
	set guifont=Consolas:h14
    set background=dark
	set t_Co=256 " 256 color mode
    set cursorline " highlight current line
	colors koehler
    highlight CursorLine guibg=#003853 ctermbg=24 gui=none cterm=none
endif


" auto reload .vimrc after rewrited
autocmd! bufwritepost .vimrc source ~/.vimrc


" Settings of status line {
"
set laststatus=2
set statusline=%4*%<\%m%<[%f\%r%h%w]\ \ \ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
" }


" Settings for Tab "
set noexpandtab
nnoremap <S-z> :tabp<CR>
nnoremap <S-x> :tabn<CR>


" C/C++ specific settings
autocmd FileType c,cpp,cc set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30


" --- move around splits {
" move to and maximize the below split
map <C-J> <C-W>j<C-W>_
" move to and maximize the above split
map <C-K> <C-W>k<C-W>_
" move to and maximize the left split
nmap <c-h> <c-w>h<c-w><bar>
" move to and maximize the right split
nmap <c-l> <c-w>l<c-w><bar>
set wmw=0 " set the min width of a window to 0 so we can maximize others
set wmh=0 " set the min height of a window to 0 so we can maximize others


" Remap keys
inoremap jj <ESC>


" Settings for taglist
let Tlist_Ctags_Cmd = "c:/ctags58/ctags.exe"
