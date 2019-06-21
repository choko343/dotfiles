"Setting"
set noswapfile
" 矢印キーを無効にする
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

set scrolloff=5

set nocompatible
set shiftwidth=4
set tabstop=4
set expandtab
" カッコを閉じたときに対応するカッコへ一時的に移動
set nostartofline

" タイトルを変更しない
set notitle

" コマンド保管
set wildmenu

" コマンド，検索パターンを50まで保存
set history=50

" 自動インデントを有効にする
set smartindent
set autoindent
set backspace=indent,eol,start

" カッコの対応をハイライト
set showmatch

"検索結果をハイライトする
set hlsearch

" ルーラー，行番号を表示
set ruler
set number

" カーソルラインを表示する
"set cursorline

"ステータスラインにコマンドを表示
set showcmd
"ステータスラインを常に表示
set laststatus=2
"ファイルナンバー表示
set statusline=[%n]
"ホスト名表示
set statusline+=%{matchstr(hostname(),'\\w\\+')}@
"ファイル名表示
set statusline+=%<%F
"変更のチェック表示
set statusline+=%m
"読み込み専用かどうか表示
set statusline+=%r
"ヘルプページなら[HELP]と表示
set statusline+=%h
"プレビューウインドウなら[Prevew]と表示
set statusline+=%w
"ファイルフォーマット表示
set statusline+=[%{&fileformat}]
"ファイルタイプ表示
set statusline+=%y

"ここからツールバー右側
set statusline+=%=
"文字バイト数/カラム番号
set statusline+=[%{col('.')-1}=ASCII=%B,HEX=%c]
"現在文字列/全体列表示
set statusline+=[C=%c/%{col('$')-1}]
"現在文字行/全体行表示
set statusline+=[L=%l/%L]
"現在のファイルの文字数をカウント
"現在行が全体行の何%か表示
set statusline+=[%p%%]


" -------------------------------------
" 検索
" -------------------------------------
" 検索するときに大文字小文字を区別しない
set ignorecase
" 小文字で検索すると大文字と小文字を無視して検索
set smartcase
" 検索がファイル末尾まで進んだら、ファイル先頭から再び検索
set wrapscan
" インクリメンタル検索 (検索ワードの最初の文字を入力した時点で検索が開始)
set incsearch
" 検索結果をハイライト表示
set hlsearch



"set list

let g:solarized_termcolors=256
let g:solarized_termtrans=1
"let g:solarized_degrade=0
"let g:solarized_bold=1
"let g:solarized_underline=1
"let g:solarized_italic=1
"let g:solarized_contrast='normal'
"let g:solarized_visibility='normal'

set t_Co=256
syntax enable
set background=dark
colorscheme solarized


"Setting for GNU GLOBAL"
map <C-g> :Gtags
map <C-h> :Gtags -f %<CR>
map <C-j> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>


