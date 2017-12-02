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
