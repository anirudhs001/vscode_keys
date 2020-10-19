" Comments in Vimscript start with a `"`.  
" If you open this file in Vim, it'll be syntax highlighted for you.

" Vim is based on Vi. Setting `nocompatible` switches from the default
" Vi-compatibility mode and enables useful Vim functionality. This
" configuration option turns out not to be necessary for the file named
" '~/.vimrc', because Vim automatically enters nocompatible mode if that file
" is present. But we're including it here just in case this config file is
" loaded some other way (e.g. saved as `foo`, and then Vim started with
" `vim -u foo`).

" MYSETTINGS:
"--------------------------->
set nocompatible
filetype indent on "Enable file-type specific indentation
filetype plugin on "Enable plugins

syntax on "Enable syntax highliting

set title "name of terminal window is same as file name

set tabstop=4 "4 spaces per tab
set expandtab
set smarttab
set autoindent "automatically indent while editing
set shiftwidth=4 "indent = 4 spaces

"Numbering
set number "show numbers
set relativenumber "relative numbers 

"Code Folding
set foldmethod=indent "folding based on indent
set foldlevelstart=10
set foldnestmax=10

"Splitting panes
set splitright 
set splitbelow

"wildmenu
set wildmenu

"keybindings
imap ^[h <left>
imap ^[j <down>
imap ^[k <up>
imap ^[l <right>

inoremap jk <esc>
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

nnoremap <space> za

" add material theme
let g:material_terminal_italics = 1
let g:material_theme_style = 'lighter'
colorscheme material

" add pathogen: a plugin manager
execute pathogen#infect()

" powerline statusline
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup

"--------------------------->
"MYSETTINGS END


" Disable the default Vim startup message.
set shortmess+=I


" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2
