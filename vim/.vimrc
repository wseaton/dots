syntax enable

let g:airline_powerline_fonts=1

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


silent! map <F4> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "left"
let g:NERDTreeSortOrder = ['\/$', '\.py$', '*', '\.swp$', '\.bak$', '\~$']
let g:NERDTreeMinimalUI = 1


call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'jnurmine/Zenburn'
Plug 'neomake/neomake'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'

call plug#end()

call togglebg#map("<F3>")


autocmd! BufWritePost,BufEnter * Neomake

let g:neomake_warning_sign = {
  \ 'text': 'W',
  \ 'texthl': 'WarningMsg',
  \ }

let g:neomake_error_sign = {
  \ 'text': 'E',
  \ 'texthl': 'ErrorMsg',
  \ }

set mouse=a
set hlsearch
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme gruvbox
