set nu                  "line number
set ic                  "ignore case when searching
set mouse=a             "enable to use mouse
set clipboard=unnamed
set expandtab           "use space to replace tab
set tabstop=4           "one tab = 4 space
set shiftwidth=4        "indent width
set autoindent
set smartindent
set cursorline          "enable cursorline
set cursorcolumn        "enable vertical cursorline
set ignorecase
set hlsearch
set ruler
set timeoutlen=80

filetype plugin indent on
syntax on
highlight CursorColumn ctermbg=DarkBlue
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE

set bg=dark

map <C-a> <esc>ggVG<CR>
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap (<CR> (<CR>)<Esc>O
imap jk <Esc>
