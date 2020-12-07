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
Plug 'neoclide/coc.nvim', {'branch': 'release'} " intellisense / VSCode features
Plug 'KabbAmine/vCoolor.vim' " color picker
Plug 'andymass/vim-matchup' " extends % to syntax, hl {} TODO: learn more about
Plug 'easymotion/vim-easymotion' " label-style jumps
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs' " autoindent and closing brace on {<CR>
Plug 'xolox/vim-session' " Session manager / automatically open buffers
  Plug 'xolox/vim-misc' " Dependency for vim-session
Plug 'tpope/vim-surround' " matching tags text object
Plug 'tpope/vim-repeat' " . repeats plugin operations
call plug#end()
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0
set background=light
set termguicolors
colorscheme CandyPaper
map <C-o> :NERDTreeToggle<CR>
syntax on
