call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'sjl/badwolf'
Plug 'https://github.com/ycm-core/YouCompleteMe.git', { 'do': './install.py --all' }
Plug 'dense-analysis/ale'
Plug 'itchyny/lightline.vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdcommenter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tpope/vim-sensible'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()

colorscheme palenight
set background=dark
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" Italics for my favorite color scheme
let g:palenight_terminal_italics=1
let g:lightline = { 'colorscheme': 'palenight' }


"FZF
set rtp+=~/.fzf

"Scroll offset
set scrolloff=4

set tabstop=3 shiftwidth=3 expandtab

set number

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"opt + q
let g:UltiSnipsExpandTrigger="œ"
"opt + a
let g:UltiSnipsJumpForwardTrigger="å"
"opt + z
let g:UltiSnipsJumpBackwardTrigger="Ω"


"Run goimports along gofmt on each save. Automatic dependencies
let g:go_fmt_command = "goimports"    
"Automatically get signature/type info for object under cursor
let g:go_auto_type_info = 1           
"Disables the quickfix menu that shows up when tests fail(vim-go)
let g:go_fmt_fail_silently = 1

set scrolloff=4

"Close quickfix and locations lists windows
nmap <F6> :windo lcl\|ccl\|pclose<CR>

syntax on

let g:dracula_italic = 0

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

"Remove scratch
set completeopt-=preview

"Ale Configuration
let g:ale_lsp_root = {'gopls': '~/.vim/bundle/vim-go/bin'}
let g:ale_go_bingo_executable = 'gopls'
let g:ale_completion_enabled = 1
let g:ale_linters = { 'go': ['gofmt', 'golint', 'go vet', 'gopls'] }

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1

"Vim-go highlithing
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1


" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
