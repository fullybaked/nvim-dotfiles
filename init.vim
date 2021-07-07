"
"   ________       _______       ________      ___      ___  ___      _____ ______
"  |\   ___  \    |\  ___ \     |\   __  \    |\  \    /  /||\  \    |\   _ \  _   \
"  \ \  \\ \  \   \ \   __/|    \ \  \|\  \   \ \  \  /  / /\ \  \   \ \  \\\__\ \  \
"   \ \  \\ \  \   \ \  \_|/__   \ \  \\\  \   \ \  \/  / /  \ \  \   \ \  \\|__| \  \
"    \ \  \\ \  \   \ \  \_|\ \   \ \  \\\  \   \ \    / /    \ \  \   \ \  \    \ \  \
"     \ \__\\ \__\   \ \_______\   \ \_______\   \ \__/ /      \ \__\   \ \__\    \ \__\
"      \|__| \|__|    \|_______|    \|_______|    \|__|/        \|__|    \|__|     \|__|
"
"
" startify - fancy startup screen
" vimfiler - nerdtree replacement ??
"
"
"
"
if &compatible
  set nocompatible
endif

" Set main configuration directory as parent directory
let $VIM_PATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')

function! s:source_file(path)
  let abspath = resolve($VIM_PATH . '/nvim/' . a:path)
  execute "source" fnameescape(abspath)
endfunction

" Configs are pure Vim/NeoVim settings that don't require any third-party code to work
call s:source_file('config/init.vim')
call s:source_file('config/plugins.vim')
call s:source_file('config/mappings.vim')
call s:source_file('config/clipboard.vim')
call s:source_file('config/settings.vim')
call s:source_file('config/line-numbers.vim')
call s:source_file('config/functions.vim')
call s:source_file('config/statusline.vim')

" Plugins are single third-party tools that require significant setup
call s:source_file('plugins/fzf.vim')
call s:source_file('plugins/ale.vim')
call s:source_file('plugins/vimwiki.vim')
call s:source_file('plugins/vimtest.vim')

" Layers are collections of plugins and settings for a given concept
" E.g. A programming tool or language
call s:source_file('layers/general.vim')
call s:source_file('layers/completion.vim')
call s:source_file('layers/git.vim')
call s:source_file('layers/python.vim')
" call s:source_file('layers/ruby.vim')
call s:source_file('layers/tmux.vim')
call s:source_file('layers/file-browsing.vim')
" call s:source_file('layers/elixir.vim')
call s:source_file('layers/tags.vim')

call s:source_file('layers/zapier.vim')

call s:source_file('plugins/colorscheme.vim')

