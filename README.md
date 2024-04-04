# lines
The perfect text editor--not. It's a script to install the Neovim configuration I mainly use for web development on Linux.

![A screenshot of the latest version](screenshots/Screenshot%20from%202024-04-04%2021-34-02.png "A screenshot of the latest version")

## Installation
Be aware that installing lines overwrites your current ```~/.config/nvim```.

To install lines, execute 
```bash
git clone https://github.com/elfry2/lines.git
cd lines
./main
```
The installation may take some time due to downloads, so you may want to skip them later after successfully running them once by appending ```--no-download```.

## Usage
Execute
```bash
nvim
```

Before using lines, you are expected to be familiar with vim basic usage, which you can learn pretty quickly from [this article](https://www.linuxfoundation.org/blog/blog/classic-sysadmin-vim-101-a-beginners-guide-to-vim).

You don't need to know how to install plugins or how to do configuration to start using lines, but you can learn them from [this StackOverflow answer](https://stackoverflow.com/a/55846872).

## Configuration
Plugins are to be managed using [vim-plug](https://github.com/junegunn/vim-plug) and registered in ```~/.config/nvim/config/plugs.vim```.

Further configuration is to be placed in its own new *.vim file in ```~/.config/nvim/config/```. Any *.vim file placed in this directory gets sourced automatically.

## Unconventional and Useful Mappings 
- ```<ESC>``` -> ```jk``` in insert and visual mode
- Toggle file explorer (```:NvimTreeToggle```) -> ```tr``` in normal mode. Other nvim-tree mappings can be shown by pressing ```g?``` on its window
- Expand snippet -> ```;'``` in insert mode
- Toggle comment -> ```gcc``` in normal mode; ```gc``` in visual mode
- Toggle terminal (```:ToggleTerm direction=tab```) -> ```te``` in normal mode
- Switch between windows (bars) -> ```Ctrl```+```ww``` in normal mode
- Switch to the next buffer (tab) -> ```Ctrl```+```Tab``` in normal mode
- Switch to the previous buffer (tab) -> ```Ctrl```+ ```Shift```+```Tab``` in normal mode

## Troubleshooting
- **Lualine arrows not showing, only rectangles; missing icons; etc.** The script has installed Agave Nerd Font Mono on your system. Configure your terminal to use it or another nerd font of your choice
