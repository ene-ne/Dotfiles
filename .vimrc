call plug#begin('~/.vim/plugged')
Plug 'https://github.com/tpope/vim-eunuch.git'
Plug 'sheerun/vim-polyglot'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'romainl/vim-cool' " turns off highlighting when done searching
Plug 'preservim/nerdtree'
Plug 'mengelbrecht/lightline-bufferline' " add bufferline through lightline
Plug 'psliwka/vim-smoothie' " smooth scrolling for jump commands
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'dense-analysis/ale'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'Yggdroot/indentLine'
Plug 'machakann/vim-highlightedyank' " briefly hilight yank
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'neoclide/coc.nvim', {'branch': 'release'} " intellisense / VSCode features
Plug 'junegunn/goyo.vim'
Plug 'KabbAmine/vCoolor.vim' " color picker
Plug 'andymass/vim-matchup' " extends % to syntax, hl {} TODO: learn more about
Plug 'easymotion/vim-easymotion' " label-style jumps
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs' " autoindent and closing brace on {<CR>
Plug 'tpope/vim-surround' " matching tags text object
Plug 'tpope/vim-repeat' " . repeats plugin operations
Plug 'xolox/vim-session' " Session manager / automatically open buffers
  Plug 'xolox/vim-misc' " Dependency for vim-session
call plug#end()
set number
set cursorline " Show current line
set termguicolors " 24 bit colors (Essential for color code preview)
" Enable true color 启
if (has("termguicolors"))
  set termguicolors
endif
set ruler " cursor coordinates
set wrap " no horizontal scrolling
set linebreak " break lines in viewport at allowed characters only
set breakindent " indent lines wrapped in the view
set scrolloff=3 " minimum 3 lines below and above cursor
set laststatus=2 " always show status bar (in my case lightline)
set noshowmode " disable -- INSERT -- since lightline has it
set showcmd " show selection size and last command
set hidden
set incsearch
set hlsearch
set mouse=a
set wildmenu
set wildcharm=<C-z>
command! -nargs=0 Prettier :CocCommand prettier.formatFile
filetype plugin on
let g:livepreview_previewer = 'zathura'
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

let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setColors = 0
set updatetime=200
set background=light
set termguicolors
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_contrast_light = 'hard'
colorscheme boo
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
map <C-o> :NERDTreeToggle<CR> 
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Tab navigation like Firefox.
syntax on
