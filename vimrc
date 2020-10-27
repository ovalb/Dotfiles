"my vimrc with 'plug' as a plugin manager
"add a plugin by Plug <plugin name>
"reload vimrc with :source ~/.vimrc from within vim itself
"run :PlugInstall
if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

"Plugins will be downloaded under the specific directory
"You need to type :PlugInstall to actually install the plugins
call plug#begin('~/.vim/plugged')

"Here are my plugins
Plug 'lifepillar/pgsql.vim'
Plug 'preservim/nerdcommenter'
Plug 'ekalinin/Dockerfile.vim'

call plug#end()

syntax on

set nocompatible
set number
set autoindent
set nobackup
set tabstop=4
set shiftwidth=4
set ruler
set hlsearch
set noswapfile
set cursorline
set t_Co=256 "fixes tmux issue

colorscheme pablo

