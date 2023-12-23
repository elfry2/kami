
" -----------------------------------------------------------------------------
" Configuration that makes use of only built-in features goes below. Remember
" to keep it minimal. It conflicts very easily. Before adding anything, check
" whether there's already a plugin to do the task.
"
" Plugins are to be managed using vim-plug and registered in
" ~/.config/nvim/plugs.vim .

" 
" Use less width for tabs.
"
" Found on https://stackoverflow.com/a/57708527.
set tabstop=2
set shiftwidth=2

"
" Disable line wrapping.
"
" Found on https://stackoverflow.com/questions/1290285/why-cant-i-stop-vim-from-wrapping-my-code.
set textwidth=0
set wrapmargin=0
set wrap!

"
" Show line numbers.
"
" Found on https://www.cyberciti.biz/faq/how-to-display-line-number-in-vim/.
set number

"
" Remap ESC key.
"
" Found on https://vi.stackexchange.com/a/18081.
inoremap jk <esc>
vnoremap jk <esc>

"
" Enable mouse.
"
" Found on https://vimtricks.com/p/using-a-mouse-in-vim/.
set mouse=a

