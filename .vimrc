" Basic config for better optic
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent

" Saves and loads folds in ~/.vim/views
" Not needed as we use Simple Fold Plugin
" au BufWinLeave * mkview
" au BufWinEnter * silent loadview
" set foldmethod=indent "allows to easily fold python function, classes

" For syntax highlighting 
filetype plugin on
syntax on

" New key bindings
" Save file with sudo inside vim
cmap w!! w !sudo tee > /dev/null %

" Change tab with ctrl left/right 
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Run Python code in terminal 
autocmd FileType python map <buffer> <F9> :w<CR>:ter ++rows=10 python3 %:p<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:ter ++rows=10 python3 %:p<CR>

" Plugin loader
call plug#begin()

" Autocompletion 
Plug 'https://github.com/ycm-core/YouCompleteMe'
" Comment out with gcc (normal mode) gc (visual mode)
Plug 'tpope/vim-commentary'
" New theme
Plug 'morhetz/gruvbox'
" Close parenthesis etc
Plug 'Townk/vim-autoclose'
" File explorer
Plug 'scrooloose/nerdtree'
" Simple python folding
Plug 'https://github.com/tmhedberg/SimpylFold'

call plug#end()

" Toggle NerdTree on ctrl-n
map <C-n> :NERDTreeToggle<CR>"
map <C-t> :set nosplitright<CR>:TagbarToggle<CR>:set splitright<CR>

" Issues with Autoclose plugin and text appearing from nowhere
" https://stackoverflow.com/questions/13621845/vim-pumvisible-call-putting-in-random-text
let g:AutoClosePreserveDotReg = 0

" Set color
set background=dark
set termguicolors 
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox 
