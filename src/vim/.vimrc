if &compatible
  finish
endif

if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

set autoindent
set backspace=indent,eol,start
set complete-=i
set smarttab

set nrformats-=octal

set ttimeout
set ttimeoutlen=100


set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

set laststatus=2
set showcmd
set wildmenu

" regular linux files
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,./build/*,./target/*,*.fls,*.aux

" ignore ctrl-p git stuff
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

set number relativenumber

if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

if has('path_extra')
  setglobal tags-=./tags tags^=./tags;
endif

set shell=/bin/zsh

set autoread

if &history < 1000
  set history=1000
endif
if &tabpagemax < 50
  set tabpagemax=50
endif
if !empty(&viminfo)
  set viminfo^=!
endif
set sessionoptions-=options

" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux'
  set t_Co=16
endif

" Load matchit.vim, but only if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif

if exists('g:zenbones_compat')
  g:zenbones_compat = 1
endif

" Leader
let mapleader = " "

autocmd ColorScheme janah highlight Conceal ctermbg=NONE
autocmd ColorScheme janah highlight Normal ctermbg=235
colorscheme janah

" Options
set expandtab 
set smarttab 
set splitright
set splitbelow
set nowrap linebreak 
set smartindent 
set clipboard^=unnamedplus
set shiftwidth=2
set tabstop=8
set softtabstop=2
set conceallevel=2
set noswapfile
set nobackup

" Trigger configuration. You need to change this to something other than
" <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-s>"
" let g:UltiSnipsJumpBackwardTrigger="<c-b>"

function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
