set nocompatible        " не совместимость с vi

language ru_RU.UTF-8
set langmenu=ru_RU.UTF-8
set helplang=ru

set laststatus=2
set statusline=%t%M%R\ %P

" файлы
set autoread            " Set to auto read when a file is changed from the outside

" редактор
set nowrap              " не разрывать строку
set number              " показывать номер строки
set foldcolumn=1        " показываем колонку с плюсиками для фолдинга
set showtabline=0
set undolevels=100      " 
set backspace=indent,eol,start whichwrap+=<,>,[,]

" Отступы

function! Tabstyle()
    set softtabstop=4
    set shiftwidth=4
    set tabstop=4
    set expandtab
    set smarttab
endfunction

call Tabstyle()

function! Search()
    set ignorecase          " игнорировать прописные / строчные символы при поиске
    set hlsearch            " при поиске подсвечивать найденные совпадения
    set incsearch           " при поиске перескакивать на найденный текст в процессе набора
    set showmatch           " подсвечивать совпадающие скобки
    set smartcase           " игнорировать регистр ри поиске строчными символами
endfunction

call Search()

function! Indenting()
    set autoindent          " Automatically set the indent of a new line (local to buffer)
    set smartindent         " smartindent (local to buffer)
endfunction

call Indenting()

function! Backup()
    set backup
    set backupdir=/tmp
    set directory=/tmp
endfunction

call Backup()

" Фолдинг
set foldmethod=indent
set foldnestmax=3
set nofoldenable

set scrolljump=7        " количество строк до конца экрана когда начинается скролирование

set hidden              " работа с несколькими файлами без сохранения

set novisualbell        " выключаем бибиканье и мигание
set t_vb=   

set fo+=cr              " Fix <Enter> for comment

" Подсветка синтаксиса
syntax on               " включаем
colorscheme bubblegum   " название используемой темы
set t_Co=256            " наш терминал поддерживает 256 цветов


" Включаем распознование типов файлов и типо-специфичные плагины
filetype on
filetype plugin on
filetype indent on

" Кодировки
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r

" Клавиатура
"nmap <Space> <PageDown>
" C-y - удаление текущей строки
"nmap <C-y> dd
"imap <C-y> <esc>ddi

map <C-w>v :vertical wincmd f<CR>

imap <C-_> <C-X>/

set pastetoggle=<C-v>

" C-d - дублирование текущей строки
"imap <C-d> <esc>yypi


"dont load csapprox if we no gui support - silences an annoying warning
"if !has("gui")
    "let g:CSApprox_loaded = 1
"endif
