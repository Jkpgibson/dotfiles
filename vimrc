let mapleader =","

"Autoinstall vimplugged
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
    let g:UltiSnipsExpandTrigger = '<tab>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    let g:tex_conceal='abdmg'
Plug 'dylanaraps/wal'
Plug 'junegunn/goyo.vim'
Plug 'jalvesaq/Nvim-R'
call plug#end()

set nomodeline
set nocompatible
filetype plugin on
set number
syntax on
set ignorecase
set ruler
set showmatch
set showmode
colorscheme wal
set background=dark

" Spellchecking and spelling
:map <F6> :setlocal spell! spelllang=en_us<CR>
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

:command Wq wq
:command W w

map <leader>f :Goyo \| set linebreak<CR>

inoremap <Space><Space> <Esc>/<++><Enter>"_c4l

autocmd FileType html inoremap ;i <em></em><Space><++><Esc>FeT>i
autocmd FileType html inoremap ;b <b></b><Space><++><Esc>FbT>i
autocmd FileType html inoremap ;p <p></p><Enter><Enter><++><Esc>FpT>i 
autocmd FileType html inoremap ;1 <h1></h1><Enter><Enter><++><Esc>FhT>i
autocmd FileType html inoremap ;2 <h2></h2><Enter><Enter><++><Esc>FhT>i
autocmd FileType html inoremap ;3 <h3></h3><Enter><Enter><++><Esc>FhT>i
autocmd FileType html inoremap ;4 <h4></h4><Enter><Enter><++><Esc>FhT>i
autocmd FileType html inoremap ;5 <h5></h5><Enter><Enter><++><Esc>FhT>i
