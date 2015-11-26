set nocompatible              " be iMproved, required
filetype off                  " required
nmap <F2> :TagbarToggle<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F5> :GoLint<CR>
nmap <F6> :GoVet<CR>
nmap <F7> :GoImport<CR>
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'wting/rust.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/ctrlp.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'rhysd/vim-crystal'
Plugin 'wakatime/vim-wakatime'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
set ts=4 sw=4 et
let g:indent_guides_start_level=2
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set mouse=a
set number
set t_Co=256
set background=dark
set laststatus=2
colorscheme PaperColor
let g:pencil_higher_contrast_ui = 0   " 0=low (def), 1=high
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=black   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=darkgrey ctermbg=4

function! GoMetaLinter() abort
	silent cexpr system("gometalinter ".expand("%"))
	cwindow
endfunction
au FileType go nmap <F4> :call GoMetaLinter()<CR>
