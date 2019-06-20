"Setting"

set title
set number
set tabstop=4
set expandtab
"set list

let g:solarized_termcolors=256
let g:solarized_termtrans=1
"let g:solarized_degrade=0
"let g:solarized_bold=1
"let g:solarized_underline=1
"let g:solarized_italic=1
"let g:solarized_contrast='normal'
"let g:solarized_visibility='normal'

set t_Co=256
syntax enable
set background=dark
colorscheme solarized


"Setting for GNU GLOBAL"
map <C-g> :Gtags
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>


