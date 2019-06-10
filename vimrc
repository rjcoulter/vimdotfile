execute pathogen#infect()
filetype on
syntax on
colorscheme Tommorow-Night
set number
set hidden
set history
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set hlsearch
set showmatch

autocmd VimEnter * NERDTree | wincmd p "Open NerdTree automatically on edit side
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "Close NT if its the only window left
map <C-n> :NERDTreeToggle<CR> "Ctrl n is now the toggle command

"Setting for Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checkers = ['pylint'] "Python Linter

