" Configurations on g.
let g:vimDir = $HOME.'/.vim'
let g:javascript_plugin_jsdoc = 1 " Todo: find an alternative to this.
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Temporarily disable python mode
" let g:pymode=0
let g:pymode_options_max_line_length=88

" Configurations on s
let s:pluginDef  = g:vimDir.'/vimconfig/pluglist.vim'
let s:pluginConf = g:vimDir.'/vimconfig/plugconfig.vim'
let s:configSetting = g:vimDir.'/vimconfig/settings.vim'
let s:functions = g:vimDir.'/vimconfig/functions.vim'
""let s:configMapping = g:vimDir.'/vimconfig/mapping.vim'

""let s:userConfig  = g:vimDir.'/local.vim'

" Loads the global config, mapping and settings
exec ":source ".s:configSetting
""exec ":source ".s:configMapping

" Loads plugins def and config
exec ":source ".s:pluginDef
exec ":source ".s:pluginConf

" Loads custom functions
" exec ":source ".s:functions

" user configuration from .vim folder
""if filereadable(s:userConfig)
 ""  exec ":source ".s:userConfig
""endif

" user configuration from local folder
""if filereadable('local.vim')
 ""  exec ":source local.vim"
""endif
