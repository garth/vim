syntax on
execute pathogen#infect()
filetype plugin indent on
set noexrc
set fenc=utf-8
set number
" set lines=36 columns=120
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

map <C-n> :NERDTreeToggle<CR>
" Send more characters for redraws
set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2
let g:NERDTreeDirArrowExpandable = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

