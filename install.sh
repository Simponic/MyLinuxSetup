curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "
syntax on

set number relativenumber
set nu rnu
set tabstop=4
set shiftwidth=4
set nowrap
set backspace=indent,eol,start
set laststatus=2
set noshowmode
set autoindent
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'Raimondi/delimitMate'
Plug 'xavierd/clang_complete'

call plug#end()

colorscheme gruvbox
set background=dark

let mapleader = ' '
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>q :x<CR>

autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()) | q | endif

set autoindent

" >> ~/.vimrc
