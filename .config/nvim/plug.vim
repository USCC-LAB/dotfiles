
call plug#begin('~/.config/nvim/plugged')

" gruvbox scheme
Plug 'morhetz/gruvbox'  

" file navigator
Plug 'scrooloose/nerdtree'
" nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" indent line
" Let indent level is visible
Plug 'Yggdroot/indentLine'

call plug#end()

" color scheme {{{
set background=dark
colorscheme gruvbox
" }}}

" NERDTree {{{

" Press F5 open file navigator
nnoremap <F5> :NERDTreeToggle<cr>

" Open file navigator by default
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" }}}
