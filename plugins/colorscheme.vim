" --------------------------------------------------
" Colours
" --------------------------------------------------
"
" Better syntax highlighting support
call dein#add('nvim-treesitter/nvim-treesitter')
call dein#add('sheerun/vim-polyglot')

call dein#add('tjdevries/colorbuddy.nvim')
call dein#add('bkegley/gloombuddy')
call dein#add('sainnhe/sonokai')
call dein#add('sainnhe/everforest')
call dein#add('sainnhe/gruvbox-material')
call dein#add('sainnhe/edge')

colorscheme edge

" Enable TrueColor
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set t_Co=256
set bg=dark

" Cursor line
set cursorline
hi clear CursorLine
hi CursorLine cterm=underline gui=underline
hi CursorLineNr cterm=italic gui=italic

autocmd ColorScheme * hi clear SignColumn
autocmd ColorScheme * hi GitGutterAdd ctermfg=green ctermbg=none
autocmd ColorScheme * hi GitGutterChange ctermfg=yellow ctermbg=none
autocmd ColorScheme * hi GitGutterDelete ctermfg=red ctermbg=none
autocmd ColorScheme * hi GitGutterChangeDelete ctermfg=yellow ctermbg=none
autocmd ColorScheme * hi Search ctermbg=none cterm=underline ctermfg=none
autocmd ColorScheme * hi Keyword cterm=italic
autocmd ColorScheme * hi PreProc cterm=italic
autocmd ColorScheme * hi Statement cterm=italic

hi clear SignColumn
hi GitGutterAdd ctermfg=green ctermbg=none
hi GitGutterChange ctermfg=yellow ctermbg=none
hi GitGutterDelete ctermfg=red ctermbg=none
hi GitGutterChangeDelete ctermfg=yellow ctermbg=none
hi Search ctermbg=none cterm=underline ctermfg=none
hi Keyword cterm=italic
hi PreProc cterm=italic
hi Statement cterm=italic

" Trailing whitespace sucks. Show it:
"highlight ExtraWhitespace ctermbg=darkred guibg=darkred
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()
