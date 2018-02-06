" quickfix-window
autocmd QuickFixCmdPost *grep* cwindow

" ctags
nnoremap <Space>c g<C-]> 
nnoremap <f5> :!ctags -R<CR>
"autocmd BufWritePost * call system("ctags -R")

" tab
nnoremap [t gt
nnoremap ]t gT
nnoremap [tab]    <Nop>
nmap     <Space>t [tab]
nnoremap <silent> [tab]e :tabedit<CR>
nnoremap <silent> [tab]c :tabclose<CR>
nnoremap <silent> [tab]o :tabonly<CR>
