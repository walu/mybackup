"set mouse=a
set showmatch
set hls
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp936,gbk
set number
set history=100
syntax on
filetype plugin indent on
set sw=4
set ts=4
set expandtab
set nocompatible
set incsearch
set nowrap

map <F2> :w<CR>
map <F3> :vsplit<CR><C-w>l:ConqueTerm bash<CR>

imap <F2> <ESC>:w<CR>i
imap <F3> <ESC>:vsplit<CR><C-w>l:ConqueTerm bash<CR>i

set ai

" neo自动提示插件的配置
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
