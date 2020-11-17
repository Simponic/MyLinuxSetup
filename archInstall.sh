# Install arch stuff
# Upgrade
sudo pacman -Syu

# Install build packages and git
sudo pacman -S cmake base-devel git vim htop go
mkdir ~/git

# Install emojis, source-code fonts, fontawesome, and htop
sudo pacman -S noto-fonts-emoji adobe-source-code-pro-fonts ttf-font-awesome htop

# Install xorg stuff
sudo pacman -S xorg-server xorg-apps xorg-xinit xcompmgr 

echo "
exec dwm &
exec xcompmgr -c -l0 -t0 -40 -o.00 &
exec feh --bg-center ~/git/MyLinuxSetup/background.jpg &
exec barM
" >> ~/.xinitrc

# Install firefox
sudo pacman -S firefox

# Install acpi for battery
sudo pacman -S acpi

# Install my favorite terminal emulator - termite
sudo pacman -S termite

mkdir -p ~/.config/termite
cp ./termite-config ~/.config/termite/

# Install feh for background
sudo pacman -S feh

# DWM setup ; make install must be run by user
cd ~/git
git clone https://github.com/Simponic/dmenu-rice
git clone https://github.com/Simponic/dwm-rice

# Set bashrc stuff
echo "
alias ls='ls --color=auto'
alias untar='tar -xvf'
alias backlight='xbacklight -set'
export PS1='\n\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;2m\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;165m\][\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;208m\]\t\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;208m\]\d\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;165m\]]\[$(tput sgr0)\] : \[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\n> \[$(tput sgr0)\]'

alias l='ls -l'
alias vi='vim'
" >> ~/.bashrc

# Install plugged for vim
sudo pacman -S curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install python
sudo pacman -S python

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
set colorcolumn=90
set encoding=utf-8
highlight ColorColumn ctermbg=0 guibg=lightgrey


call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'Raimondi/delimitMate'

call plug#end()

colorscheme sonokai

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

set listchars=tab:\¦\ 
set list

let g:ycm_confirm_extra_conf=0
" >> ~/.vimrc

# Install YouCompleteMe for vim
python3 ~/.vim/plugged/YouCompleteMe/install.py --all

# Please don't spam
git config --global user.email "loganthebean222@gmail.com"
git config --global user.name "Simponic"

echo "
def Settings( **kwargs ):
    return {
        'flags': [ '-x', 'c++', '-Wall', '-Wextra', '-Werror'],
    }
" >> ~/.ycm_extra_conf.py
