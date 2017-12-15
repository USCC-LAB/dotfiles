
call plug#begin('~/.config/nvim/plugged')

" gruvbox scheme
Plug 'morhetz/gruvbox'  

" file navigator
Plug 'scrooloose/nerdtree'
" nerdtree-git-plugin
Plug 'Xuyuanp/nerdtree-git-plugin'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" indent line
" Let indent level is visible
Plug 'Yggdroot/indentLine'

" rainbow parentheses
Plug 'luochen1990/rainbow'

" auto-pair
Plug 'jiangmiao/auto-pairs'

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

" airline {{{
" TODO: This airline setting is suggestion of mine, You should See ':help
" airline' to know the detail

let g:airline#extensions#tabline#enabled = 1

" show the airline_tab type is tab or buffer (top right)
let g:airline#extensions#tabline#show_tab_type = 1

" close symbol (top right)
let g:airline#extensions#tabline#close_symbol = 'X'

" enable displaying buffers with a single tab 
" it mean airline_tab type is buffer
let g:airline#extensions#tabline#show_buffers = 1
" Show the buffer order with a single tab
" convient to use <leader>n to switch buffer
let g:airline#extensions#tabline#buffer_idx_mode = 1

" if airline_tab type is tab
" convient to use <leader>n to switch tap
let g:airline#extensions#tabline#tab_nr_type = 1 

" disable show split information on top right
let g:airline#extensions#tabline#show_splits = 0

" TODO: Change the this key mapping if you want. For example <leader>F1,
" <leader>F2 ...
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" }}}
" Rainbow Parentheses Improved {{{
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
" }}}


