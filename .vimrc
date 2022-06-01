""""MY key bind STUFF [*= errorr]
map <C-c> "+y
map <C-v> "+p
map W :w<CR>
map Y y$
map E ge
map cp :r!xclip -o -sel <CR>
map Q :reg<CR>
map <F2> :set number<CR>
map <C-h> <C-w><Left>
map <C-j> <C-w><Down>
map <C-k> <C-w><Up>
map <C-l> <C-w><Right>
map <C-Down> <C-w><Left>
map <Down> <C-w><Down>
map <Up> <C-w><Up>
noremap <C-Up> <C-w><Right>
map <leader>t :tabnew<CR>
map <C-Tab> :tabnext<CR>
map <C-w>l :tabnext<CR>
map <C-w>h :tabprevious<CR>
map <Right> :tabnext<CR>
map <Left> :tabprevious<CR>
map <F5> :!shellcheck % <CR>
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F4> :!compiler % <CR>

set nocompatible
filetype plugin on
syntax on

call plug#begin()
Plug 'dylanaraps/wal.vim'
Plug 'vimwiki/vimwiki'
Plug 'dermusikman/sonicpi.vim'
Plug 'vim-scripts/AutoComplPop'
call plug#end()

Plug 'dylanaraps/wal.vim'
Plug 'vimwiki/vimwiki'

"plug stuff
colorscheme wal

"my shit
 " Auto-start sxhkd
	autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &
 " fzf thingi for find command
	set path+=**
 " shows cmds right-down corner
	set showcmd
	" compile dwmblockes 
	autocmd BufWritePost ~/git/dwmblocks/config.h !cd ~/git/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & } 

	" auto start ncmpcpp -s visualizer
	autocmd BufWritePost ~/.config/ncmpcpp/config  !st -e ncmpcpp -s visualizer
	autocmd BufWritePost ~/Doc/resume/lol.ms !tbl lol.ms | groff -ms -T pdf  > lol
	" sonic pi keybinds
	autocmd BufReadPost *.son :map <Leader>r W:!xdotool key super+j sleep 0.5 key alt+r super+j enter <CR>
	autocmd  BufReadPost *.son :map <Leader>s :!xdotool key super+j sleep 0.5 key alt+s super+j enter <CR>
" Navigate the complete menu items like CTRL+n / CTRL+p would.
 inoremap <expr> <C-j> pumvisible() ? "<C-n>" :"<Down>"
 inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
 inoremap <expr> <C-k> pumvisible() ? "<C-p>" : "<Up>"
 inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
 inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
 inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
 inoremap <expr> <C-l> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
 inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
 inoremap <expr> <C-h> pumvisible() ? "<C-e>" : "<Left>"


"* source ~/.vim/plugin/plugins.vim
     set splitright  splitbelow                       " Open new splits to the right " Open new splits to the bottom
" " Leader Mappings
 map <Space> <leader>
 map <leader>q :sh<CR>


 " Recently edited files
 "map <Leader>h :History<CR>
"
"
     set autoread                          " Auto reload changed files
     set wildmenu                          " Tab autocomplete in command mode
     set backspace=indent,eol,start        "
     set clipboard=unnamed                 " Clipboard support (OSX)
     set laststatus=2                      " Show status line on startup
     set lazyredraw                        " Reduce the redraw frequency
     set ttyfast                           " Send more characters in fast
"     terminals
     "set nowrap                            " Don't wrap long lines
     "set listchars=extends:→               " Show arrow if line continues
"     rightwards
     "set listchars+=precedes:←             " Show arrow if line continues
"     leftwards
     "set nobackup nowritebackup noswapfile " Turn off backup files
     set noerrorbells novisualbell         " Turn off visual and audible
"     bells
     set shiftwidth=4 tabstop=4  " Two spaces for tabs everywhere
     set history=500
     set hlsearch                          " Highlight search results
     "set ignorecase smartcase              " Search queries intelligently set
"     case
     set incsearch                         " Show search results as you type
     set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting
"     escape set showcmd                           " Show size of visual selection
"
"
"     " Persistent undo
     set undodir=~/.vim/undo/
     set undofile
     set undolevels=1000
     set undoreload=10000
"
"     " Ignored files/directories from autocomplete (and CtrlP)
     set wildignore+=*.zip
"
"     "-------------------------------------------------------------------------------
"     " Interface
"     "-------------------------------------------------------------------------------
"
     set number                " Enable  line numbers
     set relativenumber        " Enable relative line numbers
     set scrolloff=5       " Leave 5 lines of buffer when scrolling
     set sidescrolloff=10  " Leave 10 characters of horizontal buffer when
		 set spell! spelllang=en_us
"     scrolling
"
"     "-------------------------------------------------------------------------------
"     " Colors & Formatting
"     "-------------------------------------------------------------------------------
"
"     colorscheme solarized
"     set background=dark
"
"     " Showcase comments in italics
     highlight Comment cterm=italic gui=italic
"
"     " Open most recently used files on start
      " autocmd VimEnter * Mru .
"
"     " Easy tab navigation
     ""nnoremap <C-Left> :tabprevious<CR>
     ""nnoremap <C-Right> :tabnext<CR>
"     " Find/replace
"      vnoremap <C-r> "hy:%s/<C-r>h//g<left><left><left>
"
"
"     " let g:auto_save = 1  " enable AutoSave on Vim startup
"     " let g:auto_save_in_insert_mode = 0 " do not save in insert mode
"
"     " Get off my lawn - helpful when learning Vim :)
     " nnoremap <Left> :echoe "Use h"<CR>
     " nnoremap <Right> :echoe "Use l"<CR>
     " nnoremap <Up> :echoe "Use k"<CR>
     " nnoremap <Down> :echoe "Use j"<CR>
"mouse in vim
"set mouse=a
