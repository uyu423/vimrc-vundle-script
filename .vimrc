" vi에서 파일 인코딩 자동 확인
set fileencodings=utf8,euc-kr 
" vi에서 탭 크기 마우스로 조절 가능하게
"set mouse=a
" vi 실행시 number line 생성
set nu
" 코딩 작업시 지능적인 들여쓰기
set smartindent
" 코딩 작업시 자동적용 들여쓰기
set autoindent
" 일반모드에서 / 검색시 하이라이팅
set hlsearch
" 일반모드에서 / 검색시 대소문자 구분하지 않음
set ignorecase
" Tab 관련 설정. 일반적으로 가장 많이 쓰이는 tabstop 4, shiftwidth 4
" 16.10.08 --> tabstop, shiftstop, shiftwidth를 2로 변경함.
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
" 닫는 괄호를 입력할 때 일치하는 괄호 보여줌
set showmatch

" 폴딩 기능 키 매핑
map <F5> v]}zf

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
" HTML Parser
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Vim에서 파일 탐색기를 사용할 수 있게 한다. - Nerd Tree
"Plugin 'The-NERD-tree'
Plugin 'scrooloose/nerdtree'
" Vim에서 자동완성 기능(Ctrl + P)을 키입력하지 않더라도 자동으로 나타나게 - AutoComplPop
Plugin 'AutoComplPop'
" 열려있는 소스파일의 클래스, 함수, 변수 정보 창 - Tag List
Plugin 'taglist-plus'
" Airline Plugin (http://vimawesome.com/plugin/vim-airline-sad-beautiful-tragic)
Plugin 'bling/vim-airline'
" Node JS? Jade?"
Plugin 'node.js'
" Shell Script INDENT / SYNTAX Plugin
Plugin 'sh.vim'
Plugin 'bsh.vim'
" PHP Plugin (http://vimawesome.com/?q=tag:php)
Plugin 'StanAngeloff/php.vim'
Plugin '2072/PHP-Indenting-for-VIm'
"Plugin 'shawncplus/phpcomplete.vim'
" Auto Syntax Checker (http://vimawesome.com/plugin/syntastic)
Plugin 'scrooloose/syntastic'
" for Markdown Preview
Plugin 'JamshedVesuna/vim-markdown-preview'
" for html automatic parse
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/gv.vim'
Plugin 'junegunn/limelight.vim'
" for PHP & Laravel Framework
"Plugin 'm2mdas/phpcomplete-extended'
"Plugin 'm2mdas/phpcomplete-extended-laravel'
" Dracula Color scheme
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
" Auto Pair Plugin
Plugin 'jiangmiao/auto-pairs'
" Auto Commentary Plugin
Plugin 'scrooloose/nerdcommenter'
" Related to Javascript
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'SirVer/ultisnips'
Plugin 'isRuslan/vim-es6'

" Molokai Color scheme
"Plugin 'molokai'
"Plugin 'lsdr/monokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" *.js = *.jsx
let g:jsx_ext_required = 0

" Makdown Plugin Github Preview 설정
let vim_markdown_preview_browser='Firefox'
let vim_markdown_preview_github=1
" Airline 설정
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" Syntastic 설정
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" set javascript syntax chacker for syntastic
"let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_checkers = ['eslint']

" vim-jade plugin의 Jade Syntax Highlighting을 위한 옵션. 이상하게 이게 없으면 하이라이팅이 작동하지 않는다.
au BufNewFile,BufReadPost *.jade set filetype=jade

" apply molokai color scheme
let g:molokai_original = 1
let g:rehash256 = 1

" apply colorscheme Molokai
"set t_Co=256
syntax on
colorscheme molokai

" apply colorscheme Dracula
"syntax on
"colorscheme dracula

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
