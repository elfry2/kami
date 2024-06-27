# kami
The perfect text editor--not. It's the Neovim dotfile I use mainly for web development.
![image](https://github.com/elfry2/kami/assets/47256917/f7ef5d13-26ff-46f0-a3dc-aa5bb2c5d16d)

## Installation
1. Install [Neovim](https://neovim.io/)
2. Install [LazyVim](https://www.lazyvim.org/), but don't start it yet!
3. Merge the ```lua``` directory of this repository into your Neovim ```lua``` directory. On Linux you can Execute
```bash
git clone https://github.com/elfry2/kami
rsync -avh --progress kami/lua/ $HOME/.config/nvim/lua/
```
4. Start kami (execute ```nvim```)

## Usage
Execute
```bash
nvim
```

Before using kami, you are expected to be familiar with vim basic usage, which you can learn pretty quickly from [this article](https://www.linuxfoundation.org/blog/blog/classic-sysadmin-vim-101-a-beginners-guide-to-vim). It might be useful to follow along with [this video](https://www.youtube.com/watch?v=N93cTbtLCIM) which walks you through the conveniences of LazyVim, and read the [LazyVim documentation](https://www.lazyvim.org/).
