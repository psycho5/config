" ----------------------USABILITY CONFIGURATION ----------------------
" Basic and pretty much needed settings to provide a solid base for
" source code editing

" don't make vim compatible with vi
set nocompatible

" turn on syntax highlighting
syntax on
" show line numbers
set number
set relativenumber

" make vim not to detect file types but load plugins for them
filetype off
filetype plugin on
filetype indent on

" set omnicomplete on
" use <C-x><C-o> for completion in insert mode
set omnifunc=syntaxcomplete#Complete

" indentation settings
set smartindent
set autoindent
set copyindent   " copy the previous indentation on autoindenting
set tabstop=2    " tab is 2 spaces
set shiftwidth=2 " set shiftwidth
set expandtab    " use appropriate number of spaces when tabbing
set shiftround   " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab     " insert tabs on the start of a line according to shiftwidth, not tabstop

set ruler        " show the cursor position all the time
set showcmd      " show current command in bottom line
set dictionary+=/usr/share/dict/words 
                    " use system dictionary for auto-completion of english words
"set noshowmode   "gets rid of --INSERT--


" reload files changed outside vim
set autoread

" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8

" enable matchit plugin which ships with vim and greatly enhances '%'
runtime macros/matchit.vim

" by default, in insert mode backspace won't delete over line breaks, or
" automatically-inserted indentation, let's change that
set backspace=indent,eol,start

" don’t unload buffers when they are abandoned, instead stay in the
" background
set hidden

" set unix line endings
set fileformat=unix
" when reading files try unix line endings then dos, also use unix for new buffers
set fileformats=unix,dos

" save up to 100 marks, enable capital marks
set viminfo='100,f1

"set smartcase searching
set ignorecase
set smartcase
set incsearch

" screen will not be redrawn while running macros, registers or other
" non-typed comments
set lazyredraw
" On file types...
" .md files are markdown files
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd BufRead,BufNewFile *.vue set ft=vue " .vue files

" start NERDTree on start-up and focus active window
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" NerdTreeToggle mapping
map <C-n> :NERDTreeToggle<CR>

"close NerdTree when only window left open is a NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

".vimrc
map <c-f> :call JsBeautify()<cr>
"" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" " for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" " for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" " for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" ---------------------- COLOURS  ----------------------
" set the color theme to wombat256
" colorscheme wombat256


