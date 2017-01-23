execute pathogen#infect()
Helptags

set term=builtin_ansi

syntax on
"syntax off
"colo torte
"colo ron
colo delek

set backupskip=/tmp/*,/private/tmp/*

set hlsearch
set incsearch

"set nowrap
set ignorecase smartcase

"set mouse=a

set expandtab
set ts=2
set softtabstop=2
set shiftwidth=2
set smartindent
set scrolloff=2

set encoding=utf-8

set laststatus=2
set nowrapscan
set statusline=%F%m%r%h%w\ %=%l,%v(%p%%)

" Easy window navigation
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

"map <F2> <ESC>0i#<ESC>j
"map <F2> <ESC>0i#<ESC>j

map <F2> @='0i#<C-V><Esc>j'<CR>
map <F3> @='0x<C-V><Esc>j'<CR>

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


"==============Ruby====================
"Execute open rspec buffer
" Thanks to Ian Smith-Heisters
function! RunSpec(args)
" if exists("b:rails_root") && filereadable(b:rails_root . "./bin")
"   let spec = b:rails_root . "bin"
" else
 let spec = "./bin/spec"
" end
 let cmd = ":! " . spec . " % -cfn " . a:args
 execute cmd
endfunction
 
" Mappings
" run one rspec example or describe block based on cursor position
map !s :call RunSpec("-l " . <C-r>=line('.')<CR>)
" run full rspec file
map !S :call RunSpec("")



"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
"autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
"autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
""improve autocomplete menu color
"highlight Pmenu ctermbg=238 gui=bold



highlight DiffAdd     term=reverse cterm=bold ctermbg=green ctermfg=white
highlight DiffChange  term=reverse cterm=bold ctermbg=cyan  ctermfg=black
highlight DiffText    term=reverse cterm=bold ctermbg=gray  ctermfg=black
highlight DiffDelete  term=reverse cterm=bold ctermbg=red   ctermfg=black 

set wildignore+=*.o,*.obj,.git,*.class,*.jar
set wildignore+=*/target/*

set nocst

nnoremap <silent><leader>n :set rnu! rnu? <cr>
nnoremap <silent><leader>N :set number! nonumber? <cr>

let g:ctags_statusline=1
let g:ctags_args='-R '
let g:ctags_title=1
let g:generate_tags=1

"let delimitMate_expand_cr = 1

nmap <leader>d :NERDTreeToggle<CR>


