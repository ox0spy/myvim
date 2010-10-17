"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8 " default set with the shell $LANG variable
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom
set nocompatible " get out of horrible vi-compatible mode
set history=100 " How many lines of history to remember
set ffs=unix,dos,mac " support all three, in this order
filetype plugin indent on " detect the type of file, load plugins
set viminfo+=! " make sure it can save viminfo
" none of these should be word dividers, so make them not be
set isk+=_,$,@,%,#,-
" every character after the 73rd character will be marked as an error
"match ErrorMsg /\%>73v.\+/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
" :cn :cN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set grepprg=ack-grep
set grepformat=%f:%l%m
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark " we are using a dark background
syntax on " syntax highlighting on
"colorscheme desert " my theme for gui
colorscheme evening " my theme for terminal

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " make backup file
set makeef=error.err " When using make, where should it dump the file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu " turn on wild menu
set ruler " Always show current positions along the bottom 
set showcmd 
set cmdheight=1 " the command bar is 1 high
set nu " turn off line numbers
"set numberwidth=4 " minimum width to use for the number column,not a fix size Vim64不支持
set hid " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
"set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt 
set report=0 " tell us when anything is changed via :...
set lz " do not redraw while running macros (much faster) (LazyRedraw)
" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\
"set lsp=0 " space it out a little more (easier to read)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set hlsearch " do highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set nowrapscan " 
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list
set so=15 " Keep 10 lines (top/bottom) for scope
set novisualbell " don't blink
set noerrorbells " no noises
set laststatus=2 " always show the status line
" set statusline=%F%m%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.0B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" set statusline=%F%m%h%w\ [ASCII=\%03.3b]\ [HEX=\%02.0B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" set tabline=tabline-layout
" highlight cursorline ctermbg=lightgray
"set highlight cursorcolumn guibg= ctermbg=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions+=mM " for charactors fold and patch
set ai " autoindent
set si " smartindent 
set cindent " do c-style indenting
set tabstop=4 " tab spacing (settings below are just to unify it)
set softtabstop=4 " unify
set shiftwidth=4 " unify 
set noexpandtab " real tabs please!
set textwidth=0 " line length
set nowrap " not wrap lines  
"set linebreak " 
set smarttab " use tabs at the start of a line, spaces elsewhere
" opening the file name beneath the cursor
set path+=.,/usr/include/*,
nnoremap gf <c-w>gf " open file in a new tab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
" Enable folding, but by default make it act like folding is off,
" because folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding
set foldmethod=syntax
" zc close the current fold
" zo open the current fold
" zM close all flods
" zR open all folds
" zj move to the next fold
" zk move to the previous fold
" zn disable folding
" zN re-enable folding
" set foldcolumn=10
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags and Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = "/usr/bin/ctags-exuberant" " Location of my ctags
let Tlist_Sort_Type = "name" " order by 
let Tlist_Use_Right_Window = 0 " split to the left side of the screen
let Tlist_Compart_Format = 1 " show small meny
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 0 " Do not close tags for other files
let Tlist_Enable_Fold_Column = 0 " Do not show folding tree

" which tags files CTRL-] will search
"set tags=./tags,./../tags,./../../tags,./**/tags,tags 
set tags=./tags,/code/ctags/c_tags,/code/ctags/ora_tags,/code/ctags/tux_tags
" auto change the current dierctory when you open the file or window
" or any other buffer  Vim64不支持
"set autochdir 
set makeef=makeerror.err

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make tabs show complete (no broken on two lines)
let g:miniBufExplTabWrap = 1
let g:miniBufExplModSelTarget = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ensure every file does syntax highlighting (full)
autocmd BufEnter * :syntax sync fromstart
"autocmd GUIEnter * :simalt ~x -- " having it auto maximize the screen

" if there are any error space(the end of line or before the tabs)
" in c/c++ code,highlight it
"if $VIM_HATE_SPACE_ERRORS != '0'
"let c_space_errors=1
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto-Complete:
" 1. Templates
" 2. Abbreviations
"    usage:
"    iabbrev name payload
"    cabbrev name othername
" 3. Insert-mode auto-complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set for template
function! LoadTemplate()
	silent! 0r ~/.vim/skel/tmpl.%:e
	" highlight	%VAR% placeholders with the Todo colour group
	syn match Todo "%\u\+%" containedIn=ALL
endfunction
autocmd! BufNewFile * call LoadTemplate()
" jump between %VAR% placeholders in Normal mode with <Ctrl-p>
"nnoremap <c-p> /%\u.\{-1,}%<cr>c/%/e<cr>
" jump between %VAR% placeholders in Insert mode with <Ctrl-p>
"inoremap <c-p> <ESC>/%\u.{-1,}%<cr>c/%/e<cr>

" set for abbreviations
"iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
iab xdate <c-r>=strftime("%Y%m%d %H:%M:%S")<ESC><ESC>
" abbreviate commands
" cabbr docs help
" write a ~/.vim/abbreviations file
" source ~/.vim/abbreviations

" set for Insert-mode auto-complete
filetype plugin on
let g:pydiction_location = "~/.vim/dict/py_complete-dict"
"let g:pydiction_menu_height = 20

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set for lisp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.lsp,*.lisp,*.scm so ~/.vim/lisp/VIlisp.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set for javascript
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\\"

if has("autocmd")
  " 自动检测文件类型并加载相应的设置
  filetype plugin indent on
  " Python 文件的一般设置，比如不要 tab 等
  " autocmd FileType python setlocal et | setlocal sta | setlocal sw=4
  " Python Unittest 的一些设置
  " 可以让我们在编写 Python 代码及 unittest 测试时不需要离开 vim
  " 键入 :make 或者点击 gvim 工具条上的 make 按钮就自动执行测试用例
  autocmd FileType python compiler pyunit
  autocmd FileType python setlocal makeprg=python\ ./alltests.py
  autocmd BufNewFile,BufRead test*.py setlocal makeprg=python\ %
  " 自动使用新文件模板
  autocmd BufNewFile test*.py 0r ~/.vim/skel/test.py
  autocmd BufNewFile alltests.py 0r ~/.vim/skel/alltests.py
  " autocmd BufNewFile *.py 0r ~/.vim/skel/skel.py
  "新建文件后，自动定位到文件末尾
  "autocmd BufNewFile * normal G 
endif

" c make
set makeprg=make\ %<
set errorformat=%f:%l:\ %m

function! SignFixme()
	execute(":sign place ".line(".")." line=".line(".")." name=fixme file=".expand("%:p"))
endfunction
map <F5> :call SignFixme()<cr>

" 自定义的命令
command W w !sudo tee % > /dev/null

" vimwiki
" let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path' : '/var/www/vimwiki',
\ 'path_html' : '/var/www/vimwiki/html',
\ 'auto_export' : 1,
\ }]
" 'html_header' : '/var/www/vimwiki/template/header.tpl',

let g:vimwiki_auto_checkbox = 0	" 设置列表不自动添加 checkbox
" let g:vimwiki_w32_dir_enc = 'cp936'	" Windows
