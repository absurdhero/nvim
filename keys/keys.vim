" g Leader key
let mapleader=","
nnoremap , <Nop>
imap ,, <Esc>

nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>
nmap <leader>n :nohlsearch<CR>
nmap <leader>. <C-^>

" Better indenting
vnoremap < <gv
vnoremap > >gv

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <silent> <S-TAB> :bprevious<CR>

" <TAB>: completion.
inoremap <silent> <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

