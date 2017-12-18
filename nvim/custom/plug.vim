
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

" denite
Plug 'Shougo/denite.nvim'

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

" denite {{{
noremap [denite-leader] <Nop>
" TODO: Map your denite-leader if you want, defalut is ; key
nmap ; [denite-leader]

" basic option of denite, See :help denite#custom#option
call denite#custom#option('_', {
    \ 'prompt': 'λ:',
    \ 'winheight': 10,
    \ 'updatetime': 1,
    \ 'auto_resize': 1,
    \ 'source_names': 'short',
    \ 'empty': 0,
    \ 'auto-accel': 1,
    \})

" TODO: This mapping is alternative to Ctrl-P plugin
" Try to use it once, and remap the key if you want
nnoremap <silent> <C-p> :<C-u>Denite -mode=normal file_rec<CR>

" TODO: List all buffer and choose to open it
" Try to use it once, and remap the key if you want
nnoremap <silent> [denite-leader]b :<C-u>Denite -mode=normal buffer<CR>

" TODO: search the word in this file just like / , but it can preview
" Try to use it once, and remap the key if you want
nnoremap <silent> [denite-leader]/ :<C-u>Denite -buffer-name=search -auto-highlight  -auto-resize line<CR>

" TODO: search globally - search recursively from project root
" Try to use it once, and remap the key if you want
nnoremap <silent> [denite-leader]g/ :<C-u>Denite -buffer-name=search -mode=normal grep<CR>

" TODO: search current word in the file, like the *
" Try to use it once, and remap the key if you want
nnoremap <silent> [denite-leader]cr :<C-u>DeniteCursorWord  -mode=normal -buffer-name=search -auto-highlight line<CR><C-R><C-W><CR>

" TODO: search current word recursively in project, like the *, but it is global search
" Try to use it once, and remap the key if you want
nnoremap <silent> [denite-leader]gc :<C-u>DeniteCursorWord  -mode=normal -buffer-name=search grep<CR><C-R><C-W><CR>

" make the buffer named search not quit after the action is excuted
call denite#custom#option('search', {
    \ 'quit': 0,
    \})


" TODO: Denite key mapping is indepentdent of your vim setting, so you need to remap
" these this key. This key mapping follow the my basic.vim rule.
call denite#custom#map('insert', 'jk', '<denite:enter_mode:normal>')
call denite#custom#map('insert', "<C-j>", '<denite:move_to_next_line>')
call denite#custom#map('insert', "<C-k>", '<denite:move_to_previous_line>')

call denite#custom#map('insert', "<C-t>", '<denite:do_action:tabopen>')
call denite#custom#map('insert', "<C-v>", '<denite:do_action:vsplit>')
call denite#custom#map('normal', "vs", '<denite:do_action:vsplit>')
call denite#custom#map('normal', "sp", '<denite:do_action:split>')
call denite#custom#map('normal', "<C-h>", '<denite:wincmd:h>')
call denite#custom#map('normal', "<C-j>", '<denite:wincmd:j>')
call denite#custom#map('normal', "<C-k>", '<denite:wincmd:k>')
call denite#custom#map('normal', "<C-l>", '<denite:wincmd:l>')

" This setting is too too detail. See ':help denite'
call denite#custom#source('grep', 'matchers', ['matcher_ignore_globs'])
call denite#custom#source('line', 'matchers', ['matcher_ignore_globs', 'matcher_regexp'])
call denite#custom#source('file_rec', 'matchers', ['matcher_fuzzy','matcher_ignore_globs'])

" ignore these things when search
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [
      \ '.git/', 'build/', '__pycache__/',
      \ 'images/', '*.o', '*.make',
      \ '*.min.*',
      \ 'img/', 'fonts/',
      \ 'tags', 'cscope*'])

" }}}

