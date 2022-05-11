" Navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tips
map <A-q> <esc>
nnoremap <A-s> :w<CR>
nnoremap <A-w> A
nnoremap <silent> <leader>h :nohlsearch<CR>

" Navigate between tabs
nnoremap te :tabe<CR>
nnoremap ty :tabnext<CR>
nnoremap tr :tabprevious<CR>
nnoremap tq :tabclose<CR>

" Navigate between splits
nnoremap th :split<CR>
nnoremap tv :vsplit<CR>
nnoremap tt :q<CR>

" Navigate between buffers
nnoremap bf :bfirst<CR>
nnoremap bl :blast<CR>
nnoremap bn :bnext<CR>
nnoremap bv :bprevious<CR>
nnoremap bd :bdelete<CR>

" Exit terminal
tnoremap <Esc> <C-\><C-n>

" Reload
nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>
