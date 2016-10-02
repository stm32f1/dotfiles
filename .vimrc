set all&
autocmd!
if !1 | finish | endif

set nocompatible "vi互換モードoff
set whichwrap=b,s "backspace space以外移動は禁止
syntax enable "色分けon
set number "行番号表示
set cursorline "カーソルの横線表示
" set cursorcolumn "カーソルの縦線表示
set showmatch "対応する括弧やブレースを表示
set matchtime=1 "対応する括弧を表示する時間
set laststatus=2 "常にステータスラインを表示する
set list "タブ文字、行末などの不可視文字を表示する
set listchars=tab:>\ 
"set listchars=tab:>\ ,eol:$,extends:E,precedes:C
"set listchars=tab:▸\ ,eol:↲,extends:❯,precedes:❮
set scrolloff=4 "カーソルの上下に確保する表示票

set backspace=start,eol,indent "バックスペース有効化

"インデント
set autoindent "直前の行から新しい行のインデントを得る
set smartindent "新しい行を作ったときに高度なインデントを行う
" set cindent
set shiftwidth=8 "自動インデントの各段階に使われる空白の数

set autoread "外部のエディタで編集中のファイルが変更されたら、自動的に読み直す

set incsearch "インクリメンタルサーチを行う
set hlsearch "検索結果をハイライトする
"set gdefault ":sコマンドで'g'オプションをデフォルトにする

"set mouse=a "全モードでマウスモード有効


set wildmenu "コマンドライン補完

set visualbell "ビープの代わりに画面フラッシュ
set t_vb= "そしてビジュアルベルも無効化


set browsedir=current "ファイルブラウザにどのディレクトリを使うかを指定する カレントディレクトリ

"set directory=~/.vim/swap
"set backupdir=~/.vim/backup

"autocmd Colorscheme * highlight Comment ctermfg=130

au BufNewFile,BufRead *.ino setf arduino

set encoding=utf-8 "内部エンコーディングをUTF-8化
"set fileencodings=ucs-bom,iso-2022-jp,utf-8,cp932,euc-jp,default,latin
set fileencoding=utf-8
set fileencodings=utf-8
set fileformat=unix
scriptencoding utf-8

" ----------------------------------------------------------------------------------------
"   neobundle begin
" ----------------------------------------------------------------------------------------
"set nocompatible               " Be iMproved

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc', {
			\ 'build' : {
			\ 'windows' : 'make -f make_mingw32.mak',
			\ 'cygwin' : 'make -f make_cygwin.mak',
			\ 'mac' : 'make -f make_mac.mak',
			\ 'unix' : 'make -f make_unix.mak',
			\ },
			\ }

filetype plugin indent on     " Required!

" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles




NeoBundle 'vim-jp/vimdoc-ja' "vimの付属ドキュメントを日本語に

NeoBundle 'Shougo/unite.vim' "いろいろ一覧表示
NeoBundle 'Shougo/unite-build'
NeoBundle 'osyo-manga/unite-quickfix'
NeoBundle 'ujihisa/unite-colorscheme' "uniteのcolorscheme一覧

NeoBundle 'Shougo/vimshell.vim' "vimでshellだあああ

NeoBundle 'scrooloose/nerdtree' "横にIDEみたいに表示
NeoBundle 'vim-scripts/taglist.vim'
NeoBundle 'wesleyche/SrcExpl'
NeoBundle 'wesleyche/Trinity'
"NeoBundle 'scrooloose/syntastic' "シンタックスチェック
NeoBundle 'osyo-manga/shabadou.vim'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'cohama/vim-hier'

NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/neosnippet.vim' "スニペット補完
NeoBundle 'kana/vim-smartchr'
NeoBundle 'kana/vim-smartinput'
"NeoBundle 'Townk/vim-autoclose' "括弧自動補完
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'tpope/vim-surround' "surround
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'soramugi/auto-ctags.vim' "ctagsを保存時に実行
NeoBundle 'modsound/gips-vim' "養成ギプス
NeoBundle 'vim-scripts/gtags.vim'
NeoBundle 'terryma/vim-multiple-cursors' "複数カーソル
NeoBundle 'othree/html5.vim'
NeoBundle 'vim-scripts/Limp'

" git プラグイン
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'gregsexton/gitv'

"カラースキーム
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'endel/vim-github-colorscheme'

NeoBundle 'itchyny/lightline.vim' "ステータスラインをカスタマイズ

NeoBundle 'osyo-manga/vim-sound' "vimで音再生
NeoBundle 'thinca/vim-splash' " Changes the splash of Vim as you like.

NeoBundle 'Shougo/vinarise.vim' "バイナリ編集

NeoBundle 'basyura/TweetVim'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'basyura/twibill.vim'

" Markdown
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'yuratomo/w3m.vim'


"NeoBundle 'Shougo/echodoc.vim', '', 'default'
"call neobundle#config('echodoc', {
"			\'lazy' : 1,
"			\'autoload' : {
"			\'insert' : 1,
"			\}})

filetype plugin indent on

function! s:meet_neocomplete_requirements()
	return has('lua') && (v:version > 703 || (v:version == 703 && has('patch885')))
endfunction

if s:meet_neocomplete_requirements()
	NeoBundle 'Shougo/neocomplete.vim'
	NeoBundleFetch 'Shougo/neocomplcache.vim'
else
	NeoBundleFetch 'Shougo/neocomplete.vim'
	NeoBundle 'Shougo/neocomplcache.vim'
endif


" Installation check.
NeoBundleCheck

call neobundle#end()


" neocomplete neocomplcache begin

if s:meet_neocomplete_requirements()
	"neocomplete setting
	"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 0
	" Use neocomplete.
	let g:neocomplete#enable_at_startup = 1
	" Use smartcase.
	let g:neocomplete#enable_smart_case = 1
	" Set minimum syntax keyword length.
	let g:neocomplete#sources#syntax#min_keyword_length = 3
	let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

	" Define dictionary.
	let g:neocomplete#sources#dictionary#dictionaries = {
				\ 'default' : '',
				\ 'vimshell' : $HOME.'/.vimshell_hist',
				\ 'scheme' : $HOME.'/.gosh_completions'
				\ }

	" Define keyword.
	if !exists('g:neocomplete#keyword_patterns')
		let g:neocomplete#keyword_patterns = {}
	endif
	let g:neocomplete#keyword_patterns['default'] = '\h\w*'

	" Plugin key-mappings.
	inoremap <expr><C-g>     neocomplete#undo_completion()
	inoremap <expr><C-l>     neocomplete#complete_common_string()

	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
		return neocomplete#close_popup() . "\<CR>"
		" For no inserting <CR> key.
		"return pumvisible() ? neocomplete#close_popup() : "\<CR>"
	endfunction
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplete#close_popup()
	inoremap <expr><C-e>  neocomplete#cancel_popup()

	" Close popup by <Space>.
	inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

	" For cursor moving in insert mode(Not recommended)
	"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
	"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
	"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
	"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
	" Or set this.
	"let g:neocomplete#enable_cursor_hold_i = 1
	" Or set this.
	"let g:neocomplete#enable_insert_char_pre = 1

	" AutoComplPop like behavior.
	"let g:neocomplete#enable_auto_select = 1

	" Shell like behavior(not recommended).
	"set completeopt+=longest
	"let g:neocomplete#enable_auto_select = 1
	"let g:neocomplete#disable_auto_complete = 1
	"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

	augroup my-neocomplete
		autocmd!
		" Enable omni completion.
		autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
		autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
		autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
		autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
		autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	augroup END

	" Enable heavy omni completion.
	if !exists('g:neocomplete#sources#omni#input_patterns')
		let g:neocomplete#sources#omni#input_patterns = {}
	endif
	"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
	"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

	" For perlomni.vim setting.
	" https://github.com/c9s/perlomni.vim
	let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

else
	"neocomplcache setting


	"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
	" Disable AutoComplPop.
	let g:acp_enableAtStartup = 0
	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 1
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
	" Set minimum syntax keyword length.
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

	" Enable heavy features.
	" Use camel case completion.
	"let g:neocomplcache_enable_camel_case_completion = 1
	" Use underbar completion.
	"let g:neocomplcache_enable_underbar_completion = 1

	" Define dictionary.
	let g:neocomplcache_dictionary_filetype_lists = {
				\ 'default' : '',
				\ 'vimshell' : $HOME.'/.vimshell_hist',
				\ 'scheme' : $HOME.'/.gosh_completions'
				\ }

	" Define keyword.
	if !exists('g:neocomplcache_keyword_patterns')
		let g:neocomplcache_keyword_patterns = {}
	endif
	let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

	" Plugin key-mappings.
	inoremap <expr><C-g>     neocomplcache#undo_completion()
	inoremap <expr><C-l>     neocomplcache#complete_common_string()

	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
	function! s:my_cr_function()
		return neocomplcache#smart_close_popup() . "\<CR>"
		" For no inserting <CR> key.
		"return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
	endfunction
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()
	" Close popup by <Space>.
	"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

	" For cursor moving in insert mode(Not recommended)
	"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
	"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
	"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
	"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
	" Or set this.
	"let g:neocomplcache_enable_cursor_hold_i = 1
	" Or set this.
	"let g:neocomplcache_enable_insert_char_pre = 1

	" AutoComplPop like behavior.
	"let g:neocomplcache_enable_auto_select = 1

	" Shell like behavior(not recommended).
	"set completeopt+=longest
	"let g:neocomplcache_enable_auto_select = 1
	"let g:neocomplcache_disable_auto_complete = 1
	"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

	augroup my-neocomplcache
		autocmd!
		" Enable omni completion.
		autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
		autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
		autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
		autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
		autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
	augroup END

	" Enable heavy omni completion.
	if !exists('g:neocomplcache_omni_patterns')
		let g:neocomplcache_omni_patterns = {}
	endif
	let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
	let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
	let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

	" For perlomni.vim setting.
	" https://github.com/c9s/perlomni.vim
	let g:neocomplcache_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

endif

" neocomplete neocomplcache end


let g:neosnippet#snippets_directory='~/.vim/mine/neosnippet-snippets/snippets'
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)

""**********syntastic**********
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=2
"let g:syntastic_mode_map = {'mode': 'passive'}
"
"augroup AutoSyntastic
"	autocmd!
"	autocmd InsertLeave,TextChanged * call s:syntastic()
"augroup END
"
"function! s:syntastic()
"	w
"	SyntasticCheck
"
"endfunction



" ------------------------------------------------------------------------------
"   quickrun
" ------------------------------------------------------------------------------

"			\       'hook/redraw_unite_quickfix/enable_exit' : 0,
"			\       'hook/close_unite_quickfix/enable_exit' : 1,


let g:quickrun_config = {
			\'maker' : {
			\'command' : 'make',
			\'exec' : '%c run',
			\'outputter' : 'error:buffer:quickfix',
			\'runner' : 'vimproc',
			\},
			\
			\'watchdogs_checker/_' : {
			\},
			\'vim/watchdogs_checker' : {
			\ 'type' : executable('vint') ? 'watchdogs_checker/vint' : '',
			\},
			\'watchdogs_checker/vint' : {
			\'command' : 'vint',
			\'exec' : '%c %o %s:p ',
			\},
			\}

			"\'hook/close_quickfix/enable_hook_loaded' : 1,
			"\'hook/close_quickfix/enable_success' : 1,
let g:quickrun_config._ = {
			\'hook/close_unite_quickfix/enable_hook_loaded' : 1,
			\'hook/unite_quickfix/enable_failure' : 1,
			\'hook/close_quickfix/enable_exit' : 1,
			\'hook/close_buffer/enable_failure' : 1,
			\'hook/close_buffer/enable_empty_data' : 1,
			\'outputter' : 'multi:buffer:quickfix',
			\'outputter/buffer/split' : ':botright 8sp',
			\'outputter/quickfix/split' : ':botright 8sp',
			\'runner' : 'vimproc',
			\'runner/vimproc/updatetime' : 40,
			\}

"augroup my-watchdogs
"	autocmd!
"	"autocmd InsertLeave,BufWritePost,TextChanged .vimrc,*.vim WatchdogsRun
"augroup END
"
"let g:watchdogs_check_BufWritePost_enable = 1
"let g:watchdogs_check_CursorHold_enable = 0
"
"call watchdogs#setup(g:quickrun_config)


"**********lightline.vim**********
let g:lightline = {
			\ 'colorscheme': 'jellybeans',
			\ 'mode_map': {'c': 'NORMAL'},
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
			\ },
			\ 'component_function': {
			\   'modified': 'MyModified',
			\   'readonly': 'MyReadonly',
			\   'fugitive': 'MyFugitive',
			\   'filename': 'MyFilename',
			\   'fileformat': 'MyFileformat',
			\   'filetype': 'MyFiletype',
			\   'fileencoding': 'MyFileencoding',
			\   'mode': 'MyMode'
			\ }
			\ }

function! MyModified()
	"return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
	return &ft =~# 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
	return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? 'x' : ''
endfunction

function! MyFilename()
	return ('' !=# MyReadonly() ? MyReadonly() . ' ' : '') .
				\ (&ft ==# 'vimfiler' ? vimfiler#get_status_string() :
				\  &ft ==# 'unite' ? unite#get_status_string() :
				\  &ft ==# 'vimshell' ? vimshell#get_status_string() :
				\ '' !=# expand('%:t') ? expand('%:t') : '[No Name]') .
				\ ('' !=# MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
	try
		if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
			return fugitive#head()
		endif
	catch
	endtry
	return ''
endfunction

function! MyFileformat()
	return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
	return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
	return winwidth(0) > 60 ? lightline#mode() : ''
endfunction


" カラー設定
set t_Co=256


"**********colorscheme**********
colorscheme jellybeans


"**********gips**********
let g:gips_reading_txt = '$HOME/.vim/bundle/gips-vim/autoload/dict/quickref_vim.txt'

"**********auto-ctags**********
let g:auto_ctags = 1




set guifont=Ricty\ 13
"透明
highlight Normal ctermbg=none
highlight SpecialKey ctermbg=none
highlight NonText ctermbg=none
highlight LineNr ctermbg=none
highlight Visual ctermbg=240
highlight VisualNOS ctermbg=240

" markdownのハイライト
au BufRead,BufNewFile *.md set filetype=markdown

nnoremap <F5> :QuickRun maker<CR>

"augroup source-vimrc
"	autocmd!
"	autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
"	autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
"augroup END


function! s:OpenSourceWithHeader(source_file, filetype)
	let l:cur_filename = a:source_file . '.' . a:filetype
	let l:header_name = a:source_file . '.h'

	if filereadable(l:header_name)
		execute 'vert botright split ' . l:header_name
		execute 'dr '. l:header_name
		let &filetype=a:filetype
		execute 'dr '. l:cur_filename
	endif
endfunction

augroup autoread-header
	autocmd!
	autocmd BufRead *.cpp,*.c call s:OpenSourceWithHeader(expand('%:p:r'), &filetype)
augroup END


"inoremap <buffer><expr> = smartchr#loop(' = ', ' == ', '=')
"inoremap <buffer><expr> - smartchr#loop(' - ', '-')
"inoremap <buffer><expr> , smartchr#loop(', ', ',')
"inoremap <buffer><expr><S-=> smartchr#loop(' + ',  '+')

"let g:vimshell_prompt = 'getcwd().">"'
"let g:vimshell_prompt_expr = 'getcwd().">"'
"let g:vimshell_prompt_pattern = '^\f\+ > '


" vim -b : edit binary using xxd-format!
augroup Binary
	au!
	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | %!xxd
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | %!xxd
	au BufWritePost *.bin set nomod | endif

	au BufReadPre  *pcap let &bin=1
	au BufReadPost *pcap if &bin | %!xxd
	au BufReadPost *pcap set ft=xxd | endif
	au BufWritePre *pcap if &bin | %!xxd -r
	au BufWritePre *pcap endif
	au BufWritePost *pcap if &bin | %!xxd
	au BufWritePost *pcap set nomod | endif
augroup END


