# kami
The perfect text editor--not. It's the Neovim configuration I use mainly for web development.

![image](https://github.com/elfry2/kami/assets/47256917/dc8445cf-601d-442a-9c27-f3098b857b2a)

## Features
All the greatness of [LazyVim](https://www.lazyvim.org/), but
1. ```jk``` is set as an alternative to ```<Esc>```
2. [kanagawa-dragon](https://github.com/rebelot/kanagawa.nvim) is set as the colorscheme
3. [vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve) is installed to support JSX files better
4. [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade) is installed to support Blade files better

## Installation
On most Linux systems you can simply run ```install.sh``` by executing
```bash
./install.sh
```

Do not run the script (or any script) unless you understand what it does and you are sure that it does only what you want it to do. Be sure also not to skip reading the outputs, as they contain information as to what you might have to do next.

There's not yet an installer for other systems, but the procedure is easily reproducible.

After installing, append the following line to your shell config (~/.bashrc, ~/.zshrc, ...)
```bash
export PATH="$PATH:/opt/nvim-linux64/bin"
```

## Usage
Before using kami, you are expected to be familiar with vim basic usage, which can be learned pretty quickly from [this article](https://www.linuxfoundation.org/blog/blog/classic-sysadmin-vim-101-a-beginners-guide-to-vim). It might be useful to also follow along with [this video](https://www.youtube.com/watch?v=N93cTbtLCIM), which walks you through the conveniences of LazyVim.

To use it, launch Neovide the same way you would launch any other app, or execute on terminal
```bash
nvim
```


## Configuration
Consult the [LazyVim documentation](https://www.lazyvim.org/configuration).
