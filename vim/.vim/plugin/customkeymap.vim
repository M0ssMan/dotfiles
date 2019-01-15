" ==== Config Settings ====
set number
set mouse=a
set clipboard=unnamedplus

" ==== Custom Key Map ====
:map t <C-w>w
:map j <down>
:map u <up>
:map k <left>
:map l <right>
:nmap f <insert>
:imap <C-j> <down>
:imap <C-k> <left>
:imap <C-l> <right>
:imap <C-u> <up>
:imap <C-d> <esc>
:map <C-d> <esc>
:vmap <C-f> <C-c>
noremap m u
vmap / <Leader>c<Space>
noremap v V
noremap V v
vnoremap > >gv$
vnoremap < <gv$
noremap U <S-Up>
noremap J <S-Down>

" ==== Custom Comamnds ====
command! Cp set paste <bar> set mouse=i <bar> set nonumber <bar>
command! Nocp set nopaste <bar> set mouse=a <bar> set number <bar>

" ==== NERD Tree Mappings ====
"auto close NERDTree when all other vim windows have been closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMapActivateNode='<RightMouse>'
let NERDTreeMapActivateNode='o'
let NERDTreeMapOpenSplit='/i'
let NERDTreeMapOpenInTab='/t'
:map <C-t> :NERDTreeToggle<CR>
