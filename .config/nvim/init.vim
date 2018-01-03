" load dein
if &compatible
    set nocompatible
endif

let s:config_dir = expand($XDG_CONFIG_HOME . '/nvim')
let s:dein_dir = expand($XDG_CACHE_HOME . '/nvim/dein')
if !isdirectory(s:dein_dir . '/repos/github.com/Shougo/dein.vim')
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_dir
endif
execute 'set runtimepath^=' . s:dein_dir

if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml(s:config_dir . '/dein.toml', {'lazy': 0})
    call dein#load_toml(s:config_dir . '/deinlazy.toml', {'lazy': 1})
    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
    call dein#install()
endif

" load *.vim
function! s:source_rc(path)
	let abspath = resolve(expand(s:config_dir . '/' . a:path))
	if filereadable(abspath)
		execute 'source' abspath
		return
	endif
endfunction
call s:source_rc('encoding.vim')
call s:source_rc('options.vim')
call s:source_rc('mappings.vim')

