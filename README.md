# kami
The perfect text editor--not. It's the [Neovim](https://neovim.io/) configuration I mainly use for web development.

![image](https://github.com/elfry2/kami/assets/47256917/3bf4fe67-b6f8-4881-ac4c-3f1c68388492)

## Features
All of the greatness of [LazyVim](https://www.lazyvim.org/), but
1. ```j``` ```k``` is mapped as another way to escape Insert Mode and Terminal Mode so all fingers can stay home more often and have quality time together
2. [super-tab](https://cmp.saghen.dev/configuration/keymap.html#super-tab) mapping is used for [blink.cmp](https://github.com/saghen/blink.cmp) to keep the user from losing his mind
3. ```;``` ```f``` is mapped as a shortcut to toggle the visibility of the [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) window
4. ```;``` ```t``` is mapped as a shortcut to open a new terminal buffer
5. ```;``` ```c``` is mapped as a shortcut to close the current buffer
6. ```NoBackground``` command is added to make it easier to turn off the background colour (useful on terminals that support translucent background)
7. [kanagawa-dragon](https://github.com/rebelot/kanagawa.nvim) is set as the colorscheme for more comfortable late night sessions
8. [vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve) is installed to support JSX files better
9. [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade) and [vim-blade](https://github.com/jwalton512/vim-blade) is installed to support Blade files better 
10. Missing Tree-sitter parsers are installed automatically upon opening a file of a new type. Causes a moment of freezing, though
11. ```editor.telescope``` extra is enabled 'cuz I gave up making [fzf-lua](https://github.com/ibhagwan/fzf-lua) work on Neovide on GNOME.

## Installation
Do not run the script (or any script) unless you understand what it does and you are sure that it does only what you want it to do. Be sure also not to skip reading the bolded outputs, since they contain information as to what you might have to do next.

On most Linux systems, it should be as easy as executing
```bash
git clone https://github.com/elfry2/kami
cd kami
./install-linux.sh
```

On Windows' PowerShell with [administrative privileges](https://www.windowscentral.com/how-run-app-administrator-windows-10), execute
```powershell
# Install and upgrade Chocolatey.
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade -y chocolatey

# Install git.
choco install -y git

# Install kami.
git clone https://github.com/elfry2/kami
cd kami
.\install-windows.ps1
```

The installation script for Windows also installs [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701) to support icon glyphs without having to manually install a nerd font and configure the terminal to use it.

There isn't yet an installer for other systems, but the steps are easy to reproduce.

## Usage
To use kami in its full power, it is rather crucial to be familiar with LazyVim, which can be learnt from the resources listed on the [LazyVim website](https://www.lazyvim.org/#-learn).

If you, like me and pretty much everyone these days, find it very overwhelming to have to read so much just to use a text editor, you might prefer to begin with interactive tutorials like [OpenVim](https://openvim.com) or [VimHero](https://www.vim-hero.com/) to learn at least the basic operations of Vim for now, and then spare some time to gradually learn the rest later when you're a daily driver.

On first run, you'd be staring at [lazy.nvim](https://lazy.folke.io/) doing its best setting up your environment. It is common here, especially on slower connections, to see some red scary git errors, but most of the time they can be solved simply by waiting for the process to finish and hitting ```S``` (```<Shift>``` ```s```). The logs at the bottom might also require you to press ```<Space>``` sometimes. When everything is ready, you can press ```q``` to go to the dashboard.

To start kami, launch [Neovide](https://neovide.dev) the same way you'd launch any other application, or execute on terminal
```bash
nvim
```

## Customisation
Consult the [lazy.nvim documentation](https://lazy.folke.io) and the [LazyVim documentation](https://www.lazyvim.org).
