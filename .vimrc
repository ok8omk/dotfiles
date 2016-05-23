if &compatible
	set nocompatible
endif

let s:dein_dir = '~/.vim'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

execute 'set runtimepath+=' . s:dein_repo_dir

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	let s:toml = '~/.dein.toml'
	let s:lazy_toml = '~/.dein_lazy.toml'
	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

if dein#check_install(['vimproc'])
	call dein#install(['vimproc'])
endif

if dein#check_install()
	call dein#install()
endif

filetype plugin indent on

syntax on
colorscheme molokai
set t_Co=256
set number
set autoindent
set tabstop=4
set shiftwidth=4
set display=lastline
set backspace=indent,eol,start
nnoremap <silent><C-n> :NERDTreeToggle<CR>
