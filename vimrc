set number
"set nowrap        " don't wrap lines
set wrap

:command! WQ wq
:command! Wq wq
":command! wQ wq - Not possible because User defined commands must start with
"an uppercase letter
:command! W w
:command! Q q


" Enable filetype detection, plugins, and indentation
"filetype on
"filetype plugin on
"filetype indent on

" Set Verilog filetype for specific extensions
" This needs to be in ~/.vimrc - so create a link for the the below things to
" work
augroup verilog_ft
  autocmd!
  autocmd BufNewFile,BufRead *.v,*.vh,*.sv,*.svh set filetype=verilog
augroup END

" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 


"colorscheme blue
"colorscheme elflord
"colorscheme evening  " good, but text it too dark
"colorscheme koehler  " like koehler
"colorscheme morning  " like default
"colorscheme murphy
"colorscheme pablo    " good, but text it not bright enough
"colorscheme peachpuff " good, but not inverse
colorscheme ron  " ibm green screen
"colorscheme shine " white background grey fg
"colorscheme zellner " white background red text
set guifont=Monospace\ 11


map <silent> <Leader>zz      :set                  cursorline! <CR>
map <silent> <Leader>xx      :set   cursorcolumn!              <CR>
map <silent> <Leader>cc      :set   cursorcolumn!  cursorline! <CR>
map <silent> <Leader>co      :set   cursorcolumn   cursorline  <CR>
map <silent> <Leader>cn      :set nocursorcolumn nocursorline  <CR>
"imap <silent> <Leader>cl <Esc>:set                  cursorline! <CR>a
"imap <silent> <Leader>cc <Esc>:set   cursorcolumn!              <CR>a
"imap <silent> <Leader>ct <Esc>:set   cursorcolumn!  cursorline! <CR>a
"imap <silent> <Leader>co <Esc>:set   cursorcolumn   cursorline  <CR>a
"imap <silent> <Leader>cn <Esc>:set nocursorcolumn nocursorline  <CR>a



" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>
noremap <ESC><ESC> :w! <CR>


set autoindent

set showmatch
set smarttab
set ruler
set showcmd
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set cursorcolumn
"set cursorline
highlight Cursorline guibg=lightyellow gui=bold guifg=black

function! HasPaste()
   if &paste
   	return 'PASTE MODE   '
   en
   return ''
endfunction

"status lines
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set tabstop=2 shiftwidth=2
set expandtab

"Press \ and vv to toggle spaces as red errors
let g:space_highlight = 0
function! ToggleSpaceHighlight()
    if !g:space_highlight
        match Error /\s/
        let g:space_highlight = 1
        echo "Space highlighting ON"
    else
        match none
        let g:space_highlight = 0
        echo "Space highlighting OFF"
    endif
endfunction
nnoremap vv :call ToggleSpaceHighlight()<CR>
