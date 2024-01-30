" 
" Source every *.vim file in the configuration directory.
"
" Found on https://stackoverflow.com/a/4500936.
for f in split(glob('~/.config/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor
