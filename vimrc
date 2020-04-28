execute pathogen#infect()
syntax on
nmap <F2> :NERDTree<CR>
nmap <F4> :vertical resize -5<CR>
nmap <F5> :vertical resize +5<CR>
nmap <F6> :resize -5<CR>
nmap <F7> :resize +5<CR>
:set shiftwidth=2
:set autoindent
:set smartindent

"" insertar linea vacia sin entrar en modo escritura
map <Enter> o<ESC>
map <S-Enter> O<ESC>

autocmd FileType java setlocal omnifunc=javacomplete#Complete
filetype plugin indent on
syntax on
inoremap <C-Space> <Esc>
nmap <F3> <Plug>(JavaComplete-Imports-Add)
imap <F3> <Plug>(JavaComplete-Imports-Add)

":set rnu
" --- Hybrid relative and absolute numbers -- 
:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END
