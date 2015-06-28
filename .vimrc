syntax on
execute pathogen#infect()
filetype plugin indent on
set noexrc
set fenc=utf-8
set number
set lines=36 columns=120
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set linespace=1
set scrolloff=3

if has("unix")
  set dir=~/.vim/swap//
  set runtimepath^=~/.vim/bundle/ctrlp
  set list listchars=tab:»·,trail:·
  set guifont=Ubuntu\ Mono\ 11,DejaVu\ Sans\ Mono\ 11
  colorscheme garth
else
  set dir=~/vimfiles/swap//
  set runtimepath^=~/vimfiles/bundle/ctrlp
  set list listchars=trail:<
  set guifont=DejaVu\ Sans\ Mono:h11
  if has("gui_running")
    colorscheme garth
  endif
endif

let g:netrw_liststyle=3
" autocmd FileType js,json,html,hbs,handlebars autocmd BufWritePre <buffer> :%s/\s\+$//e

