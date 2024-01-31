" Basic config for better optic
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set clipboard=unnamed
set cursorcolumn 
hi CursorColumn ctermbg=237
set cursorline
hi clear CursorLine
hi link CursorLine CursorColumn

" Saves and loads folds in ~/.vim/views
au BufWinLeave * mkview
au BufWinEnter * silent loadview

" For syntax highlighting 
filetype plugin on
syntax on

" Change tab with ctrl left/right 
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-k> :tabnext<CR>

" Copy and paste commands
" CTRL-C to copy (visual mode)
vmap <C-c> y
" CTRL-X to cut (visual mode)
vmap <C-x> x
" CTRL-V to paste (insert mode)
imap <C-v> <esc>P
imap <C-s> <esc>:w<CR>

" Plugin loader (automatic download of Plug!)
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin()

" Autocompletion 
Plug 'https://github.com/ycm-core/YouCompleteMe'
" Comment out with gcc (normal mode) gc (visual mode)
Plug 'tpope/vim-commentary'
" LF integration and wrapper (needs to be installed later)
Plug 'ptzz/lf.vim'
Plug 'voldikss/vim-floaterm'
" Folding based on indentations
Plug 'https://github.com/pseewald/vim-anyfold'
" Send Commands directly to tmux
Plug 'https://github.com/jpalardy/vim-slime'
" Work with csv inside vim
Plug 'chrisbra/csv.vim'
" Git integration with vim-fugitive
Plug 'https://github.com/tpope/vim-fugitive'
" Codium (code completion)
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
call plug#end()

" Use Lf as navigation tool
map <C-o> :Lf<CR>
map <C-t> :LfNewTab<CR>

" Config for vim slime
let g:slime_target = "tmux"  
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}

" Execute current (python) file"
autocmd FileType python map <F9> :w<bar>:execute 'SlimeSend1 python3' fnameescape(expand('%:p'))<CR>
autocmd FileType python imap <F9> <esc>:w <bar>:execute 'SlimeSend1 python3' fnameescape(expand('%:p'))<CR>
" Vim slime sends stop signal to tmux pane
autocmd FileType python map <F10> :execute 'SlimeSend1' "\x03"<CR>
autocmd FileType python imap <F10> <esc>  :execute 'SlimeSend1' "\x03"<CR>
autocmd FileType python AnyFoldActivate
autocmd FileType python nnoremap K :YcmCompleter GetDoc <CR>


" Config for YCM: Don't show preview window!
" Toggle config with <ctrl-k>
set completeopt-=preview
let g:ycm_autoclose_preview_window_after_insertion = 1

" Config for codeium
imap <C-Right>   <Cmd>call codeium#CycleCompletions(1)<CR>
imap <C-Left>   <Cmd>call codeium#CycleCompletions(-1)<CR>

