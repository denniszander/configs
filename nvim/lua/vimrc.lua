--Get some basic config done (vimrc)
vim.cmd([[
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

" For syntax highlighting 
filetype plugin on
syntax on

" Change tab with ctrl left/right 
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-k> :tabnext<CR>

" Copy and paste commands
" Copy in system clipboard from vim#
vnoremap y "+y
vnoremap yy "+yy
" CTRL-C to copy (visual mode)
vmap <C-c> y
" CTRL-X to cut (visual mode)
vmap <C-x> x
" CTRL-V to paste (insert mode)
imap <C-v> <esc>P
imap <C-s> <esc>:w<CR>

" Search in visual mode (https://vim.fandom.com/wiki/Search_for_visually_selected_text)
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
]]
)

