nnoremap <space> <nop>
let mapleader = " "

set number
set relativenumber
set tabstop=4
set shiftwidth=4

tnoremap <C-w> <C-\><C-N><C-w>

noremap <leader>h :noh<CR>

noremap <leader>p "0p
noremap <leader>P "0P

let g:wordmotion_prefix = '<leader>'

" go surround with quotes
map gs ys

" yank to system clipboard (global yank)
" " Copy to clipboard
vnoremap  gy  "+y
nnoremap  gY  "+yg_
nnoremap  gy  "+y
nnoremap  gyy  "+yy

" " Paste from clipboard
nnoremap gp "+p
nnoremap gP "+P
vnoremap gp "+p
vnoremap gP "+P

