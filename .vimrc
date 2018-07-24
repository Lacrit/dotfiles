set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } 
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on 
syntax on

" ycm config
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_autoclose_preview_window_after_completion = 1

" multipe file managment
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR> 
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR> 
map <C-n> :NERDTreeToggle<CR>

" colors 
"hi Pmenu ctermfg=NONE ctermbg=236 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
"hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE
colorscheme anderson

"recursive search a.k.a. nerdtree without plugins 
set path+=**

map <F3> :tabp<cr>
map <F4> :tabn<cr>
map <F9> :YcmCompleter FixIt<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
  " powerline symbols
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''

set tabstop=4
set timeoutlen=1000
set ttimeoutlen=0
set noshowmode 
set laststatus=2
set wildmenu
set number relativenumber
set history=200
set showcmd
set scrolloff=8
set ai
set shiftwidth=4
set lbr
" write to a file regardless of starting with sudo 
cmap w!! w !sudotee % > /dev/null

map <F5> :! ./run.sh "%"<cr>
map <F6> :! ./compile.sh "%"<cr>

let g:Tex_DefaultTargetFormat='pdf' 

" hope it won`t be needed 
au FileType java setlocal omnifunc=javacomplete#Complete
au FileType java map<F7> <Plug>(JavaComplete-Imports-AddMissing)
au FileType java map<C-F7> <Plug>(JavaComplete-Imports-RemoveUnused)

