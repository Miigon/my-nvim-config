" ===== helpers ===== "
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

function! Cond(Cond, ...)
  let opts = get(a:000, 0, {})
  return a:Cond ? opts : extend(opts, { 'on': [], 'for': [] })
endfunction

" ===== plugins ===== "
call plug#begin(stdpath('data') . '/plugged')
" Plug 'https://github.com/tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
Plug 'https://github.com/tpope/vim-surround'
" use normal easymotion when in VIM mode
Plug 'easymotion/vim-easymotion', Cond(!exists('g:vscode'))
" use VSCode easymotion when in VSCode mode
Plug 'asvetliakov/vim-easymotion', Cond(exists('g:vscode'), { 'as': 'vsc-easymotion' })
Plug 'Mofiqul/vscode.nvim', Cond(!exists('g:vscode'))
call plug#end()

" ===== additional configs ===== "
lua << EOF
dofile(vim.fn.stdpath("config") .. "/myconf.lua")
EOF

call SourceIfExists( stdpath("config") . "/rc.vim" )
