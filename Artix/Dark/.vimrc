call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'preservim/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'dense-analysis/ale'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'https://github.com/pangloss/vim-javascript.git'
call plug#end()
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0
set background=dark
autocmd vimenter * ++nested colorscheme gruvbox
map <C-o> :NERDTreeToggle<CR>
let g:gruvbox_italic=1
syntax on
