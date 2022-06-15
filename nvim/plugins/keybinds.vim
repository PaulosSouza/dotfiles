" Navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" Tips
inoremap <A-k> <esc>
nnoremap <A-j> :w<CR>
inoremap <A-m> =
inoremap <A-,> (
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

" Exit terminal
tnoremap <Esc> <C-\><C-n>

" Reload
nnoremap <silent> <Leader><Leader> :source $MYVIMRC<cr>
