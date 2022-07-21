if (has("termguicolors"))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors " enable true colors support
endif

let g:dracula_italic=0
let g:dracula_colorterm=0

colorscheme dracula
