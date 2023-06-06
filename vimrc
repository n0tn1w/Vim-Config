set nobackup
set nowritebackup
set noswapfile

silent !mkdir ~/.vimundo > /dev/null 2>&1
set undodir=~/.vimundo
set undofile

"linux clipboard, paste outside vim, "*y
set clipboard=unnamed,unnamedplus

call plug#begin()
Plug 'sainnhe/sonokai'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/undoquit.vim'
Plug 'preservim/nerdtree'
call plug#end()

"show status line
set laststatus=2

if !has('gui_running')
  set t_Co=256
endif

if has('termguicolors')
	set termguicolors
endif

let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ }

"let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1

colorscheme sonokai

" vim-surround
" cs"' -change from " to '
" ds' - remove '
" ysiw] - [] for iw 
" yss) - hole line 

nnoremap gp :NERDTreeToggle<CR>
nnoremap g[ :NERDTreeClose<CR>
nnoremap gl :bp<CR> 
nnoremap g<C-f> :NERDTreeFind<CR>

" Open/Close of the tree
" gl Open last tab
" g<C-f> locate current file

nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

