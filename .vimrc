"Plugins
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/tpope/vim-eunuch.git'  "Helpers for UNIX
Plug 'https://github.com/sheerun/vim-polyglot.git'  "Language pack for Vim
Plug 'romainl/vim-cool' " turns off highlighting when done searching
Plug 'preservim/nerdtree'
Plug 'mengelbrecht/lightline-bufferline' " add bufferline through lightline
Plug 'psliwka/vim-smoothie' " smooth scrolling for jump commands
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale' "Linting for Vim
Plug 'KabbAmine/vCoolor.vim' " color picker
Plug 'gko/vim-coloresque' "color preview for vim
Plug 'Yggdroot/indentLine' " indentation line and leading spaces
Plug 'unblevable/quick-scope' "Highlights characters for f, F, t, T
Plug 'easymotion/vim-easymotion' " label-style jumps, called by <leader><leader>motion
Plug 'justinmk/vim-sneak' "Jump to any location specified by two characters s{char}{char} (if using operators, use z---> for instance 3dzqt, delete third instance of qt
Plug 'jiangmiao/auto-pairs' " autoindent and closing brace on {<CR>--->(carriage return=usually enter)
Plug 'xolox/vim-session' " Extended session management for vim
  Plug 'xolox/vim-misc' " Dependency for vim-session
Plug 'tpope/vim-surround' " matching tags text object
Plug 'tpope/vim-repeat' " . repeats plugin operations

call plug#end()





"colors
syntax enable		"	enable syntax processing
" Enable true color 启
if (has("termguicolors"))
  set termguicolors
endif
set background=light
set nocompatible
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
colorscheme boo

" Spaces & Tabs
set tabstop=4   "number of visual spaces per TAB
set softtabstop=4 "number of visual spaces per TAB while editing
set expandtab " tab inserts spaces

"UI
set number  "show line numbers
set showcmd "show commands in bottom bar
set cursorline  "highlight current line
filetype indent on  "load filetype-specific indent files
set wildmenu  "visual autocomplete for command menu
set showmatch "highlight matching [{()}]  
set ruler " cursor coordinates
set wrap " Long lines fit the window
set linebreak " break lines in viewport at allowed characters only
set breakindent " indent is preserved in linebreak
set scrolloff=3 " minimum 3 lines below and above cursor
set laststatus=2 " always show status bar (in my case lightline)
set noshowmode " disable -- INSERT -- since lightline has it
set showcmd " show selection size and last command
set hidden
set incsearch "Highlights characters while searching
set hlsearch  "Highlights after search command
set mouse=a
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
let g:session_autoload='no'
set wildmode=longest,list,full
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldmethod=indent "Fold based on indent level
call plug#end()
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
filetype plugin indent on
" LIGHTLINE: Statusbar
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename' ],
      \             [ 'CurrentFunction' ] ],
      \  'right': [ [ 'lineinfo' ],
      \             [ 'percent' ],
      \             [ 'statuslinetabs' ] ],
      \ },
      \ 'inactive': {
      \ 'left': [ [ 'filename' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ] ],
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \   'statuslinetabs': 'LightlineStatuslineTabs',
      \   'CurrentFunction': 'CocCurrentFunction',
      \   'cocstatus': 'coc#status',
      \ }
      \ }

function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction
function! LightlineStatuslineTabs() abort
  return join(map(range(1, tabpagenr('$')),
        \ '(v:val == tabpagenr() ? " •" : " ·") . lightline#tab#tabnum(v:val)  . (v:val == tabpagenr() ? "" : "")'), "")
endfunction

function! LightlineStatuslineTabs() abort
    return join(map(range(1, tabpagenr('$')),
            \ '(v:val == tabpagenr() ? " •" : " ·") . lightline#tab#tabnum(v:val)  . (v:val == tabpagenr() ? "" : "")'), "")
  endfunction
