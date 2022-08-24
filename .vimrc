set nu                  "line number
set ic                  "ignore case when searching 
set mouse=a             "enable to use mouse
set expandtab           "use space to replace tab
set tabstop=4           "one tab = 4 space
set shiftwidth=4        "indent width
set cursorline          "enable cursorline
set cursorcolumn        "enable vertical cursorline
highlight CursorColumn ctermbg=DarkBlue
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE

set ai                  "auto-indent
set smartindent
set cindent
filetype indent on      "enable to determine filetype through filename
syntax on

set clipboard=unnamedplus
set bg=dark

map <C-a> <esc>ggVG<CR>
inoremap {<CR> {<CR>}<Esc>O
imap jj <Esc>
imap jk <Esc>

noremap <C-W> :tabn<CR>
noremap <F4> :!


autocmd FileType python noremap <F9> <ESC>:w <CR>:!clear && ./% <CR>
autocmd FileType sh noremap <F9> <ESC>:w <CR>:!clear && ./% <CR>
