let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_z = ""
let g:airline_right_alt_sep = ''

let date = printf("%s %d ", strftime("%b"), strftime("%d"))
let g:airline#extensions#clock#format = date .. '%H:%M:%S'
