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

call SourceIfExists( stdpath("config") . "/rc_before_plugin.vim" )

" ===== plugins ===== "
call plug#begin(stdpath('data') . '/plugged')
" Plug 'https://github.com/tpope/vim-commentary'
Plug 'tomtom/tcomment_vim'
" Plug 'https://github.com/tpope/vim-surround'
Plug 'kylechui/nvim-surround'
Plug 'ggandor/leap.nvim'
Plug 'Mofiqul/vscode.nvim', Cond(!exists('g:vscode'))
Plug 'tpope/vim-sleuth' " for setting tab width heuristically
" Plug 'wellle/targets.vim'
Plug 'chaoren/vim-wordmotion'
call plug#end()

" ===== additional configs ===== "
lua << EOF
dofile(vim.fn.stdpath("config") .. "/myconf.lua")
EOF

call SourceIfExists( stdpath("config") . "/rc.vim" )
