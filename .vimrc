colorscheme molokai 
syntax on
set nocompatible
filetype plugin on

"====================================================
"set
set nolist
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set number relativenumber
" set numberwidth=6
" set nu rnu
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=lightgrey
"=====================================================
call plug#begin('~/.vim/plugged')

Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'kien/ctrlp.vim'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-rooter'
Plug 'vim-scripts/Peasy'
Plug 'kshenoy/vim-signature'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'ryanoasis/vim-devicons'
Plug 'severin-lemaignan/vim-minimap'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'sirver/ultisnips'
Plug 'suan/vim-instant-markdown'
Plug 'plasticboy/vim-markdown'
Plug 'tmhedberg/simpylfold'

" Initialize plugin system
call plug#end()
"=====================================================
"Airline
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'ravenpower'
"=====================================================
"=====================================================
" Git Gutter
" Use fontawesome icons as signs
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
let g:gitgutter_override_sign_column_highlight = 1
highlight SignColumn guibg=bg
highlight SignColumn ctermbg=bg
" Update sign column every quarter second
set updatetime=250
" Jump between hunks
nmap <Leader>gn <Plug>GitGutterNextHunk  " git next
nmap <Leader>gp <Plug>GitGutterPrevHunk  " git previous
" Hunk-add and hunk-revert for chunk staging
nmap <Leader>ga <Plug>GitGutterStageHunk  " git add (chunk)
nmap <Leader>gu <Plug>GitGutterUndoHunk   " git undo (chunk)
"=====================================================
"=====================================================
"UltiSnips
" Trigger configuration. You need to change this to something else than <tab>
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"=====================================================
"=====================================================
"Markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 1
let g:instant_markdown_open_to_the_world = 1
let g:instant_markdown_allow_unsafe_content = 1
let g:instant_markdown_allow_external_content = 0
let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
let g:instant_markdown_mathjax = 1
let g:instant_markdown_browser = "chrome"
let g:instant_markdown_port = 8888
let g:instant_markdown_autoscroll = 1
"=====================================================
"=====================================================
" KEY MAPPING AREA

" Set ,as the leader key
noremap <Space> <Nop>
map <Space> <Leader>

" example of using the changed leader key
noremap <Leader>w :w<cr>

"horizontal split
noremap <Leader>hs :sp<cr>

"vertical split
noremap <Leader>vs :vsp<cr>

"quit
noremap <Leader>q :q<cr>

"Toggle nerd tree
noremap <Leader>nt :NERDTreeToggle<cr>

"rotate windows
noremap <Leader>rr <c-w>r

"open terminal
noremap <Leader>tt :vert term<cr> 

"open terminal and rotate to the right
noremap <Leader>hv :vert term<cr> <C-w>l <C-w>r <C-w>h

"open .vimrc when i need to adjust
noremap <Leader>vv :vsp<cr> :e ~/.vimrc <cr>

"open snippets and save your markdown snippets
noremap <leader>mds :vsp<cr> :e ~/.vim/UltiSnips/markdown.snippets<cr>

"open snippets and save your python snippets
noremap <leader>ps :vsp<cr> :e ~/.vim/UltiSnips/python.snippets<cr>
