" vi 실행시 number line 생성
set nu
" 코딩 작업시 자동 들여쓰기
set smartindent
" 일반모드에서 / 검색시 하이라이팅
set hlsearch
" 일반모드에서 / 검색시 대소문자 구분하지 않음
set ignorecase
" Tab 관련 설정. 일반적으로 가장 많이 쓰이는 tabstop 4, shiftwidth 4
set tabstop=4
set shiftwidth=4

set nocompatible
" set the runtime path to include Vundle and initialize
" NERD Tree를 왼쪽에 생성
let NERDTreeWinPos = "left"
" NERD Tree는 F2키. Tag List는 F3키에 매칭.
nmap <F2> :NERDTree<CR>
nmap <F3> :TlistToggle<CR>
" Tag list가 사용하는 ctags의 경로 설정
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_Inc_Winwidth = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_Auto_Open = 0
" Tag list 창을 오른쪽으로 생성
let Tlist_Use_Right_Window = 1

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Vim에서 파일 탐색기를 사용할 수 있게 한다. - Nerd Tree
Plugin 'The-NERD-tree'
" Vim에서 자동완성 기능(Ctrl + P)을 키입력하지 않더라도 자동으로 나타나게 - AutoComplPop
Plugin 'AutoComplPop'
" 열려있는 소스파일의 클래스, 함수, 변수 정보 창 - Tag List
Plugin 'taglist-plus'
" Airline Plugin (http://vimawesome.com/plugin/vim-airline-sad-beautiful-tragic)
Plugin 'bling/vim-airline'
" Node JS? Jade?"
Plugin 'node.js'
Plugin 'digitaltoad/vim-jade'
" Shell Script INDENT / SYNTAX Plugin
Plugin 'sh.vim'
Plugin 'bsh.vim'
" PHP Plugin (http://vimawesome.com/?q=tag:php)
Plugin 'StanAngeloff/php.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'Shougo/vimproc'
Plugin 'Shougo/unite.vim'
Plugin 'm2mdas/phpcomplete-extended'
" Auto Syntax Checker (http://vimawesome.com/plugin/syntastic)
Plugin 'scrooloose/syntastic'

" Molokai Color scheme
"Plugin 'molokai'
"Plugin 'lsdr/monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Syntastic 설정
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" vim-jade plugin의 Jade Syntax Highlighting을 위한 옵션. 이상하게 이게 없으면 하이라이팅이 작동하지 않는다.
au BufNewFile,BufReadPost *.jade set filetype=jade

" apply molokai color scheme
"let g:molokai_original = 1
let g:rehash256 = 1

" apply colorschemes
set t_Co=256
syntax on
colorscheme molokai
" colorscheme desert
" colorscheme slate

filetype on
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
