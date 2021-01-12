set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'preservim/nerdtree'
    Plugin 'preservim/nerdcommenter'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'morhetz/gruvbox'
    Plugin 'kien/rainbow_parentheses.vim'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'vim-python/python-syntax'

call vundle#end()            " required
filetype plugin indent on    " required

"rememter last cursur pos
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif"`'")"'"

set smartindent   " inherit indentation from previous line
set expandtab     " tab = space
set shiftround    
set shiftwidth=4
set tabstop=4
set smarttab

set hlsearch      " search highlighting

set encoding=utf-8
set linebreak     " avoid wrapping line in the middle of the word

set number
" set visualbell
set title

" set foldmethod=indent  
set showmatch     " display matching brackets
set mouse=a

"tab=2 when detected html
autocmd BufRead,BufNewFile *.htm,*.html setlocal tabstop=2 shiftwidth=2 softtabstop=2


" key map
let mapleader=","
nnoremap <leader>c :call NERDComment(0, "toggle")<CR>
vnoremap <leader>c :call NERDComment(0, "toggle")<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

nnoremap <Leader>1 1gt 
nnoremap <Leader>2 2gt 
nnoremap <Leader>3 3gt 
nnoremap <Leader>4 4gt 
nnoremap <Leader>5 5gt 
nnoremap <Leader>6 6gt 
nnoremap <Leader>7 7gt 
nnoremap <Leader>8 8gt 
nnoremap <Leader>9 9gt 
nnoremap <C-t>     :tabnew<CR>

nnoremap <Leader>t :NERDTreeToggle<CR>
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |quit | endif

" vim-python/python-syntax
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0


" Nerd commenter
" let g:NERDCreateDefaultMappings = 1   " Create default mappings
let g:NERDSpaceDelims = 1             " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1         " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left'       " Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDAltDelims_java = 1          " Set a language to use its alternate delimiters by default
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }   " Add your own custom formats or override the defaults
let g:NERDTrimTrailingWhitespace = 1  " Enable trimming of trailing whitespace when uncommenting
let g:NERDToggleCheckAllLines = 1     " Enable NERDCommenterToggle to check all selected lines is commented or not 



au BufEnter * set fo-=c fo-=r fo-=o   " stop adding comment when newline

" gruvbox setting
syntax on
set bg=dark
colorscheme gruvbox
" let g:gruvbox_contrast_dark = 'hard'

" RainbowComment
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
