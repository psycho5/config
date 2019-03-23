" Plugin: ALE
" https://github.com/w0rp/ale
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\  'javascript': ['prettier', 'eslint'],
\  'html': ['prettier'],
\  'css': ['prettier'],
\  'scss': ['prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

" Plugin: pangloss/vim-javascript
let g:javascript_plugin_jsdoc = 1
