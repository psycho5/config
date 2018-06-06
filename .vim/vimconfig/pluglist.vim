" ---------------------- PLUGIN CONFIGURATION ----------------------
" initiate Vundle
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"start plugin defintion
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'     "explore your filesystem and to open files and directories
Plugin 'Xuyuanp/nerdtree-git-plugin' "Show git status of files and containing directories within NerdTree
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'itchyny/lightline.vim'   "configurable statusline/tabline plugin         
Plugin 'tpope/vim-surround'      "surroundings: parentheses, brackets, quotes, XML tags, and more
Plugin 'groenewege/vim-less'     "syntax highlighting, indenting and autocompletion for the dynamic stylesheet language LESS.
Plugin 'maksimr/vim-jsbeautify'
Plugin 'editorconfig/editorconfig-vim' "Ability to parse .editorconfig file
Plugin 'tpope/vim-fugitive' "Git plugin
Plugin 'klen/python-mode' "Host of python programming plugins
Plugin 'pangloss/vim-javascript'
Plugin 'ambv/black' "Python code formatter

" end plugin definition
call vundle#end()            " required for vundle

