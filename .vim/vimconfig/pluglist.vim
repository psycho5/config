" These are all the list of plugins I use.
" Vundle is my goto plugin manager.
" To know more about what each plugin does, prepend 'https://github.com/' to any of the plugins in the list below.

" initiate Vundle
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"start plugin defintion
"
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree' "explore your filesystem and to open files and directories.
Plugin 'Xuyuanp/nerdtree-git-plugin' "Show git status of files and containing directories within NerdTree.
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'itchyny/lightline.vim' "configurable statusline/tabline plugin.
Plugin 'tpope/vim-surround' "surroundings: parentheses, brackets, quotes, XML tags, and more.
" Plugin 'groenewege/vim-less'     "syntax highlighting, indenting and autocompletion for the dynamic stylesheet language LESS. Depreciated use.
" Plugin 'maksimr/vim-jsbeautify' "Depreciated use
Plugin 'editorconfig/editorconfig-vim' "Ability to parse .editorconfig file.
Plugin 'tpope/vim-fugitive' "Git plugin.
" Plugin 'klen/python-mode' "Host of python programming plugins.
Plugin 'python-mode/python-mode'
Plugin 'pangloss/vim-javascript' "JavaScript syntax highlight and indent support.
Plugin 'mxw/vim-jsx' "Syntax highlight for JSX
" Plugin 'ambv/black' "Python code formatter
Plugin 'w0rp/ale' "Asynchronous lint engine (Can use eslint, prettier, etc. as linters).
Plugin 'tpope/vim-abolish' "Search for, substitute, and abbreviate multiple variants of a word
Plugin 'dart-lang/dart-vim-plugin' "Syntax highlighting for Dart in Vim
Plugin 'natebosch/vim-lsc' "Helps vim communicating with a language server
Plugin 'sheerun/vim-polyglot' "One to rule them all, one to find them, one to bring them all and in the darkness bind them
Plugin 'tpope/vim-commentary' "commentary.vim: comment stuff out

" end plugin definition
call vundle#end()            " required for vundle
