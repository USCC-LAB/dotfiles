" General {{{

" Nvim is always "non-compatible" with Vi.
set nocompatiable

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

" }}}

" User interface {{{

" }}}

" File, backups and undo {{{

" }}}

" Text, tab and indent related {{{

" }}}

" Visual mode relative {{{

" }}}

" Moving aroud tabs and windws {{{

" }}}


vim:foldmethod=marker:tabstop=4
