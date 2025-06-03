""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" venjiang's nvim config 
" http://blog.venjiang.com
"
" edited by Dalibor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =>General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" line numbering
set nu

" relaive line numbers
set relativenumber
augroup relative_number
    autocmd!
    " autocmd InsertEnter * :set norelativenumber
    " autocmd InsertLeave * :set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    " Fix syntax highlighting
    autocmd BufEnter * :syntax sync fromstart
augroup END

" line nuber background
hi LineNr ctermbg=235

" column ruler
" set colorcolumn=80

hi ColorColumn ctermbg=237

" set autowrite
set updatetime=100

" turn off err beep 
set vb t_vb=

" highlight
hi Cursor cterm=reverse ctermbg=22
set cursorline
hi CursorLine   cterm=NONE ctermbg=237 ctermfg=none 
hi LineNr term=underline ctermfg=249 ctermbg=235 guifg=#b0b0b0
hi CursorLineNr term=bold ctermfg=214 gui=bold guifg=Yellow
hi SyntasticErrors cterm=none ctermbg=darkred
hi QuickFixLine cterm=none ctermfg=8 ctermbg=52
hi Normal ctermfg=254 ctermbg=234 guifg=#d0d0d0 guibg=#202020
hi MatchParen ctermfg=15 ctermbg=2 gui=underline guifg=#61AFEF
" hi MatchParen term=reverse ctermbg=90 guibg=#800080
" let g:airline_theme='onedark'

" devider
hi VertSplit ctermfg=8 ctermbg=234 guifg=#e0e0e0 guibg=#000000

" comments
hi Comment ctermfg=66  

" selection
" hi Visual ctermbg=237 

" non-text
" hi NonText  ctermfg=7
" guibg=76 guifg=white
" buffer next/previous
" map <leader>bl :bnext<cr>
" map <leader>bh :bprevious<cr>
" Fast saving

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
unmap <space>
unmap <c-space>
unmap <leader>n
" unmap <leader>p
unmap <leader>m
" map <leader>p :cp<cr>
" map <leader>n :lnext<CR>
" map <leader>m :lprevious<CR>
" map <c-n> :cnext<cr>
" map <c-m> :cprevious<cr>
map <c-n> :lnext<cr>
map <c-m> :lprevious<cr>
unmap <leader>pp
noremap <leader>c  :close<cr>
noremap oo  o<Esc>
" noremap ii  i<cr><Esc>
noremap <space><space>  i<space><Esc>

" editing
inoremap <c-f> <right>
inoremap <c-l> <right>
inoremap <c-b> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <delete>
" ESC
inoremap jk <Esc>
" inoremap <Esc> <Nop>

" tab
noremap <leader>1  :tabn1<cr>
noremap <leader>2  :tabn2<cr>
noremap <leader>3  :tabn3<cr>
noremap <leader>4  :tabn4<cr>
noremap <leader>5  :tabn5<cr>
noremap <leader>6  :tabn6<cr>
noremap <leader>7  :tabn7<cr>
noremap <leader>8  :tabn8<cr>
noremap <leader>9  :tabn9<cr>

" Terminal
"
" open new split panes to right and below
" set splitright
" set splitbelow

"turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>

" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif

" open terminal on ctrl+n
function! OpenTerminal()
  botright split term://zsh
  resize 10
endfunction

nnoremap <c-n> :call OpenTerminal()<CR>

" use alt+hjkl to move between split/vsplit panels
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l

" hi Terminal ctermfg=84
" noremap <silent> ;t  :terminal<cr>
" noremap <leader>t  :botright vertical terminal<cr>
" if has('nvim')
"     autocmd TermOpen term://* startinsert
"     autocmd TermEnter term://* startinsert
"     autocmd BufEnter term://* startinsert
" endif
" if has('nvim')
"     augroup terminal_setup | au!
"         autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
"     augroup end
" endif

" close comfortable-motion
let g:loaded_comfortable_motion = 0

" insert current datetime
iab xdate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>a ggvG
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

""""""""""""""""""""""""""""""
" => vlang
""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.v,*.vh	setf vlang

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  others settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent! aunmenu PopUp.Go\ to\ definition
silent! aunmenu PopUp.Open\ in\ web\ browser
silent! aunmenu PopUp.Show\ Diagnostics
silent! aunmenu PopUp.Show\ All\ Diagnostics
silent! aunmenu PopUp.Configure\ Diagnostics

amenu PopUp.Go\ to\ definition :call CocActionAsync('definition')<CR>
amenu PopUp.Open\ in\ web\ browser :echo "Not implemented"<CR>
amenu PopUp.Show\ Diagnostics :CocDiagnostics<CR>
amenu PopUp.Show\ All\ Diagnostics :CocList diagnostics<CR>
amenu PopUp.Configure\ Diagnostics :CocConfig<CR>
