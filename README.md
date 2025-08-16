# kami
The perfect text editor–not. It's a script to install the [Neovim](https://neovim.io/) configuration I use mainly for web development.

![image](https://github.com/user-attachments/assets/d9d6613d-34f8-4d49-b67a-d9a113cfb567)

The above image shows kami running on [daru](https://github.com/elfry2/daru).

## Features
All of the greatness of [LazyVim](https://www.lazyvim.org/), but
1. ```l``` ```k``` ```j``` is mapped as another way to escape Insert Mode and Terminal Mode so all fingers can stay home more often and have quality time together
2. [super-tab](https://cmp.saghen.dev/configuration/keymap.html#super-tab) mapping is used for [blink.cmp](https://github.com/saghen/blink.cmp) to keep the user from losing his mind
4. ```;``` ```t``` is mapped as a shortcut to open a new window with a terminal buffer
5. ```;``` ```c``` is mapped as a shortcut to close the current buffer
6. ```F11``` is mapped as the fullscreen toggle on Neovide
7. ```Ctrl```+```-``` and ```Ctrl```+```=``` is mapped as shortcuts to change font size and scaling on Neovide
8. ```:NoBackground``` command is added to make it easier to turn off the background colour (useful on terminals that support translucent background)
9. [kanagawa-dragon](https://github.com/rebelot/kanagawa.nvim) is set as the colorscheme for more comfortable late-night sessions

## Installation
Do not run the script (or any script) unless you understand what it does and you are sure that it does only what you want it to do. Make sure to not skip reading the output; there isn't much error-handling, if any, and you wouldn't want to think the script ran successfully when it didn't. Don't skip reading this README.md to the end either.

On most Linux systems, it should be as easy as executing
```bash
git clone https://github.com/elfry2/kami
cd kami
./install.sh
```

On Windows' PowerShell, execute
```powershell
# Install and upgrade Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
if(-Not (Get-Command scoop -errorAction SilentlyContinue)) {
  Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

# Install git Scoop package.
scoop install git

# Install kami.
git clone https://github.com/elfry2/kami
cd kami
.\Install.ps1
```

The installation script for Windows also installs [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701) via [Scoop](https://scoop.sh/). If you find this bloated, you'd know which to remove once you read the script.

There isn't yet an installer for other systems, but the steps are easy to reproduce.

## Pre-usage
To use kami in its full power, it is rather crucial to be familiar with LazyVim, which can be learnt from the resources listed on the [LazyVim website](https://www.lazyvim.org/#-learn).

On first run, you'd be staring at [lazy.nvim](https://lazy.folke.io/) doing its best setting up your environment. It is common here, especially on slower connections, to see some red scary git errors, but most of the time they can be solved simply by waiting for the process to finish and then hitting ```S``` (```<Shift>``` ```s```). The logs at the bottom might also require you to press ```<Space>``` sometimes. When everything is ready, run ```:LazyHealth``` on the Neovim command line to make sure everything is working correctly. Once finished, mash ```q``` until Neovim quits.

To display icons, configure your terminal to use a nerd font. The script installs CaskaydiaCove Nerd Font Mono.

## Usage

To start kami, launch [Neovide](https://neovide.dev) the same way you'd launch any other application, or execute on terminal
```bash
nvim
```

## Customisation
Consult the [lazy.nvim documentation](https://lazy.folke.io) and the [LazyVim documentation](https://www.lazyvim.org).
