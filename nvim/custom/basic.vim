" General {{{

" Nvim is always "non-compatible" with Vi.
set nocompatible

" Maximun value of history
set history=500

" Set to auto read when a file is changed from the outside
set autoread

" TODO: Choose the key to replace <esc> in insert mode, and delete others
" ==================== jk ==================================
" inoremap jk <esc> 
" ==================== jj ==================================
" inoremap jj <esc> 
" ==================== <Tab> ===============================
" inoremap <Tab> <esc> 


" TODO: Choose the leader key in following, and delete others
" ==================== , as leader ==========================
" let mapleader=","
" let g:mapleader=","
" ==================== ; as leader ==========================
" let mapleader=";"
" let g:mapleader=";"
" ================== <Space> as leader ======================
" let mapleader="<Space>"
" let g:mapleader="<Space>"

" When you forget to use sudo to edit file, You cannot write file (:w).
" Use this command(:W) and type password can solve it.
" You can replace W to other key which you prefer.
command W w !sudo tee % > /dev/null

" Precede each line with its line number 
set number

" Display the line and column number of the cursor postion
set ruler

" Aid of r/w in same line
set cursorline

" Auxiliary Line on specified column
" Good taste for coding neatly (no more than 81 char per line)
set colorcolumn=81

" Ignore specified file when select target (e.g. :vs [Tab])
set wildignore=*.out,*.o,*.pyc,*~
" }}}

" Basic {{{

" Do not use arrow key in vim
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

" Move cursor by display lines when wrapping
nnoremap j gj
nnoremap k gk

" TODO: move quickly
" If you need to originl J or K , do not map this key. See :help J and :help K
" ===========================================================
" nnoremap J 5j
" nnoremap K 5k

" TODO:
" If you need to originl J or K , do not map this key. See :help H and :help L
" h is move left one char, so using H move leftest char is goot to memorize
" L is the same way as H
" ===========================================================
" nnoremap H ^
" nnoremap L $

" TODO: The original u is undo, so use U to redo is easy to memorize
" If you want to use original U, do not map this key. See :help U
" ===========================================================
" nnoremap U :redo<cr>

" TODO: Leader key is important for key combination. The original one is '\'.
" However, it's quite far and a little untouchable for people. You can replace
" it with the key you want.
" ===========================================================
" let mapleader = ','

" TODO: Same reason above for '<esc>'. JUST REPLACE IT if you want.
" ===========================================================
" imap jj <esc>
" }}}

" User interface {{{

" }}}

" File, backups and undo {{{

" }}}

" Text, tab and indent related {{{

" }}}

" Visual mode relative {{{

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Using * and # like normal mode See :help * and :help #
" Visual mode pressing * or # searches for the current selection
vnoremap <slient> * :<C-u>call VisualSelection('','')<CR>/<C-R>=@/<CR><CR>
vnoremap <slient> # :<C-u>call VisualSelection('','')<CR>?<C-R>=@/<CR><CR>

" }}}

" Moving aroud tabs and windws {{{
" TODO: See :help windows-intro to learn what is buffer, window and tab

" Use :vs split vertical, and :sp split horizontal
" Puts new vsplit windows to the right of the current
set splitright
" Puts new split windows to the bottom of the current
set splitbelow


" quick way to move between windows
" Move the current window to bottom
noremap <C-j> <C-W>j
" Move to currnt window to top
noremap <C-k> <C-W>k
" Move to currnt window to left
noremap <C-h> <C-W>h
" Move to currnt window to right
noremap <C-l> <C-W>l


" Move to the next buffer and the previous buffer
" TODO: Read :help :ls and remapping the keys you prefer
" ===========================================================
" noremap ]b :bnext<cr>
" noremap [b :bprevious<cr>

" Delete current buffer without closing window
" TODO: <leader>q is default key mapping. Try to remapping the key you prefer
" ===========================================================
" nnoremap <silent> <leader>q :lclose<bar>b#<bar>bd #<CR>



" Open new tab page
" TODO: <leader>t is default key mapping. Try to remapping the key you prefer
" noremap <leader>t :tabnew<cr>

" Move to the next tab and the previous tab
" ===========================================================
" noremap ]t :tabnext<cr>
" noremap [t :tabprev<cr>

" Delete current tab
" TODO: <leader>qt is default key mapping. Try to remapping the key you prefer
" ===========================================================
" nnoremap <silent> <leader>qt :tabclose<cr>


" Close all the buffers
" TODO: <leader>ba is default key mapping. Try to remapping the key you prefer
" ===========================================================
" noremap <leader>ba :bufdo bd<cr>

" }}}


" vim:foldmethod=marker:tabstop=4

let basic_local_cfg='~/.config/nvim/custom/basic.vim.local'
if !empty(glob(basic_local_cfg))
    source basic_local_cfg
else
    echo "No basic local configuration (basic.vim.local) found"
endif
