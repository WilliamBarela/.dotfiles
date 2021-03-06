if &compatible
  set nocompatible " be iMproved required
endif

call plug#begin('~/.vim/plugged')

Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rafalbromirski/vim-aurora'
Plug 'ap/vim-css-color'

call plug#end()

filetype plugin indent on " required

" display settings
" colorscheme koehler     " setting color scheme
set termguicolors
set background=dark
colorscheme aurora
set nowrap              " nowrap of lines on screen
set scrolloff=2         " how many lines to scroll with mouse wheel
set number              " setting line numbering 
set showmatch           " show matching bracket
set matchtime=2         " show mattching bracket for 0.2 seconds
set laststatus=2        " two lines for status bar
set showmode            " show mode in status bar (insert/replace/visual)
set showcmd             " show command in status bar
set ruler               " show cursor position
set title               " show title in titlebar
set matchpairs+=<:>     " inlcude <> as matching pairs

" tab settings
set tabstop=2 		      " sets tab indent to 2 spaces
set shiftwidth=2	      " sets how wide shift will indent
set expandtab		        " converts tabs into spaces
set smartindent         " smart auto-indenting
set smarttab            " smart tab handling for indenting

" system settings
set confirm             " get a dialog when :q, :w, or :wq fails
set laststatus=2        " two lines for status bar
set viminfo='20,\"500   " remember copy registers after quitting in the .viminfo file --20 jump links, regs up to 500 lines
set hidden              " remember undo after quitting
set history=200         " keep 200 lines of command history
set mouse=v             " use mouse in visual mode (not normal, insert, command, help mode)

" folding settings
" set foldmethod=manual
" set foldnestmax=10
" set foldlevel=2
" set nofoldenable

" use built in fuzzy finder in vim
set path+=**
set wildmenu

" search settings
if &t_Co > 2 || has("gui_running")
  syntax on              " enable colors
  set hlsearch           " highlight search
  set incsearch          " search incrementally (i.e., search as you type)
endif

" ensure that transparency is true:
" hi NonText guibg=NONE ctermbg=NONE
" hi Normal guibg=NONE ctermbg=NONE

" set statusline color
hi StatusLine ctermbg=235 ctermfg=190
hi StatusLineNC ctermbg=165 ctermfg=235
hi VertSplit ctermbg=237 ctermfg=235

" set numberline color
hi LineNr ctermfg=101

" set fold line color
hi Folded ctermbg=NONE ctermfg=159

" <ctrl-l> to redraw the screen and remove any search highlighting
nnoremap <silent> <C-l> :nohl<CR><C-l>

" file type specific settings
set ffs=unix " setting to show Window's style file ending carriage return ^M

" make files remember folds when reopening
" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END

 let g:user_emmet_settings = {
 \  'eruby' : {
 \    'extends' : 'html',
 \    'snippets' : {
 \      'erb' : "<% | %>\n\t${child}\n<% end %>",
 \      'e' : "<% | %>\n",
 \      'ee' : "<%= | %>\n",
 \    }
 \  }
 \}

if has("autocmd")
  augroup mysettings
    " set all other file extentions except python to 2 space tab
    au FileType css,html,javascript,sh,config,c,cpp,ruby set smartindent shiftwidth=2 softtabstop=2 expandtab
    " set python to conform to PEP8 standards
    au FileType python set tabstop=4 softtabstop=4 expandtab shiftwidth=4 cinwords=if,elif,else,for,while,try,except,finally,def,class
  augroup END
endif "has("autocmd")
