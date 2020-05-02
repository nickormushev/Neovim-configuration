"pathogen scripts
call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"for lightline. noshwomode removes the insert tag
set laststatus=2
set noshowmode

" show first/last lines when scrolling
set scrolloff=4 

"lightline + tmux
if !has('gui_running')
    set t_Co=256
endif

"NerdTree
map <C-o> :NERDTreeToggle<CR>
nnoremap <space>q :Files<cr>

"fzf
set rtp+=~/.fzf

"papercolor
"set termguicolors
"let g:cpp_class_scope_highlight = 1
"colorscheme PaperColor
colorscheme badwolf
"colorscheme gruvbox 
set background=dark

"
let g:slime_target = "tmux"

"spaces are tabs
set tabstop=3 shiftwidth=3 expandtab

set number

"no arrows
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"indent-guides
let g:indent_guides_enable_on_vim_startup = 1
set ts=4 sw=4 et 
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_color_name_guibg_pattern = "guibg='?\zs[0-9A-Za-z]+\ze'?"

"indent line
let g:indentLine_char = '|'

"ultisnips
let g:UltiSnipsExpandTrigger="<c-q>"
let g:UltiSnipsJumpForwardTrigger="<c-space>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"youCompleteMe Removes scratch
let g:ycm_autoclose_preview_window_after_completion = 1
