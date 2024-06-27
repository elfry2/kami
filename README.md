# kami
The perfect text editor--not. It's the Neovim dotfile I use for web development.

## Installation
1. Install [Neovim](https://neovim.io/)
2. Install [LazyVim](https://www.lazyvim.org/)
3. Merge the ```lua``` directory of this repository into your Neovim ```lua``` directory. On Linux you can Execute
```
git clone https://github.com/elfry2/kami
rsync -avh --progress kami/lua $HOME/.config/nvim/lua
rm -rvf kami
```

## Usage
Execute
```bash
nvim
```

Before using kami, you are expected to be familiar with vim basic usage, which you can learn pretty quickly from [this article](https://www.linuxfoundation.org/blog/blog/classic-sysadmin-vim-101-a-beginners-guide-to-vim). It might be useful to follow along with [this video](https://www.youtube.com/watch?v=N93cTbtLCIM) which walks you through the conveniences of LazyVim, and read the [LazyVim documentation](https://www.lazyvim.org/).
