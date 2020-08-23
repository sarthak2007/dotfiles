" This is the oh my vim directory
" let $OH_MY_VIM="/home/sarthak/.oh-my-vim"
" let &runtimepath=substitute(&runtimepath, '^', $OH_MY_VIM.",", 'g')
" 
" Select the packages you need
" let g:oh_my_vim_packages=[
"            \'vim',
"            \'basic',
"            \'code', 
"            \'text', 
"            \'grep', 
"            \'searching', 
"            \'registers', 
"            \'navigation', 
"            \'files', 
"            \'git', 
"            \'python', 
"            \'web',
"            \'tools', 
"            \'markdown', 
"            \'bookmarks', 
"            \'sessions', 
"            \'spelling',
"            \'neobundle', 
"            \'golang'
"            \]
"
"set number
"
" To save, ctrl-s.
"nmap <c-s> :w<CR>
"imap <c-s> <Esc>:w<CR>a
"
"exec ':so ' $OH_MY_VIM."/vimrc"

set nocompatible  " required for improvement (don't us Vim compatible options)

if has('persistent_undo')      "check if your vim version supports it
    set undofile                 "turn on the feature  
    set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
endif     "

filetype off " required for Vundle (loading it's plugins)

" set the RunTime Path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()                                      
" can also use a path where we want to install plugins like -
" call vundle#begin('~/path')

" Beginning of Plugins

"Vundle managing Vundle 
Plugin 'VundleVim/Vundle.vim'

"status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'

"Autocomplete
Plugin 'Valloric/YouCompleteMe'

"Auto pair brackets
Plugin 'jiangmiao/auto-pairs'

"For various colors
Plugin 'flazz/vim-colorschemes'

"provides support for expanding abbreviations
Plugin 'mattn/emmet-vim'

"provides directory structure
Plugin 'scrooloose/nerdtree'

"provides easy commenting using <leader>ci
Plugin 'scrooloose/nerdcommenter'
"Plugin 'L9'

" End of Plugins

call vundle#end()

filetype plugin indent on " required (added after Vundle stuff) 

colorscheme molokai_dark    " awesome color
syntax enable               " enable syntax processing

set showmode                " show what mode we're currently editing in
set tabstop=4               " number of visual spaces per TAB
set softtabstop=4           " number of spaces in tab when editing(spaces removed in backspacing)
set expandtab               " tabs are spaces
set shiftwidth=4            " number of spaces to use for auto-indenting
set shiftround              " use multiple of shiftwidth when indenting with '<' and '>'
set autoindent              " always set autoindenting on

set number                  " show line numbers
set relativenumber          " relative number display (current line as zero)
set showcmd                 " shows the last command entered in the very bottom right of vim
set cursorline              " horizontally highlight the line cursor is on
set wildmenu                " visually autocomplete for command menu (shows graphical menu to cycle through)
set lazyredraw              " redraw the screen only when it is needed
set showmatch               " highlight matching brackets
set smartcase               " ignore case if search pattern is all pattern is all lowercase otherwise case-sensitive
set ttyfast                 " you got a fast terminal (connection b/w terminal is increased)

set incsearch               " search as characters are entered
set hlsearch                " highlight the word matches you're on

set foldenable              " enable folding (shows all folds)
set foldlevelstart=10       " open most folds by default (setting to 10 ensures only very nested blocks are folded)
set foldnestmax=10          " 10 nested fold max as folds can be nested
set foldmethod=indent       " fold based on indent level (very useful for python users)
set pastetoggle=<F2>        " paste mode, where you can paste mass data that won't be autoindented (press F2 in insert mode)
set laststatus=2

set guioptions-=m           " remove menu bar
set guioptions-=T           " remove tool bar"

set whichwrap+=<,>,h,l      " allow left, right keys to wrap                             

set nohls

" Setting cursor where mouse button is clicked
" set mouse=a

" mapleader is now comma as using it is easy
let mapleader=","


" move around lines visually
" if there's a very long line thats get visually wrapped to two lines, 'j' won't skip over the 'fake' part of the visual line in favor of the next 'real' line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $

" $/^ map to do anything
"nnoremap $ <nop>
"nnoremap ^ <nop>

" turning off search highlight when we want
nnoremap <leader><space> :nohlsearch<CR>

" space open/closes folds
nnoremap <space> za

" Remaping the <esc> key to jk
inoremap jk <esc>

" Allowing capitol W and Q
nnoremap Q q
nnoremap W w

" toggle gundo (undo the thing which you want to from the undo tree)
nnoremap <leader>u :GundoToggle<CR>

" Shortcuts for moving between tabs.
" Alt-j to move to the tab to the left
nnoremap <A-k> gT
inoremap <A-k> <Esc>gT
" Alt-k to move to the tab to the right
nnoremap <A-j> gt
inoremap <A-j> <Esc>gt

" Shortcuts for opening new tab.
" Alt-Right to open new tab
nnoremap <A-l> :tabnew<CR>
inoremap <A-l> <Esc>:tabnew<CR>

" Shortcut for closing a tab.
" Ctrl-A to close a tab
nnoremap <C-a> :q<CR>

" Shortcut for saving a file.
" Alt-Left to save a file
nnoremap <A-h> :w<CR>
inoremap <A-h> <Esc>:w<CR>

" Shortcut for toggling nerdtree
" F2 to toggle
map <F2> :NERDTreeToggle<CR>

set hidden
"Shortcut for going to next or prev buffer
" Ctrl-P for prev and Ctrl-N for next
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprev<CR>

let g:airline#extensions#tabline#enabled = 1

"Shortcut to move between different windows
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h

"Shortcut for commenting
map // <leader>ci

"Shortcut for reloading pdf's in latex
map <F5> :!pdflatex %<CR>

"Shortcut for scrolling
map <S-j> <C-E>
map <S-k> <C-Y>
