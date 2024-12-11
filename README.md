# kami
The perfect text editor--not. It's the [Neovim](https://neovim.io/) configuration I mainly use for web development.

![image](https://github.com/elfry2/kami/assets/47256917/3bf4fe67-b6f8-4881-ac4c-3f1c68388492)

## Features
All of the greatness of [LazyVim](https://www.lazyvim.org/), but
1. ```jk``` is set as an alternative to ```<Esc>``` so all fingers can stay home more often and have quality time together
2. ```;'``` instead of ```<CR>``` is set as the confirmation key for [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) to prevent the user from losing his mind
3. [kanagawa-dragon](https://github.com/rebelot/kanagawa.nvim) is set as the colorscheme for more comfortable late night sessions
4. [vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve) is installed to support JSX files better
5. [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade) is installed to support Blade files better.

## Installation
Do not run the script (or any script) unless you understand what it does and you are sure that it does only what you want it to do. Be sure also not to skip reading the bolded outputs, since they contain information as to what you might have to do next.

On most Linux systems, it should be as easy as executing
```bash
git clone https://github.com/elfry2/kami
cd kami
./installers/linux.sh
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
.\installers\windows.ps1
```

The installation script for Windows also installs [Windows Terminal](https://apps.microsoft.com/detail/9n0dx20hk701) to support icon glyphs without having to manually install a nerd font and configure the terminal to use it.

There isn't yet an installer for other systems, but the steps are easy to reproduce.

## Usage
Before using kami, you are expected to be familiar with LazyVim, which can be learnt from this book titled [LazyVim for Ambitious Developers](https://lazyvim-ambitious-devs.phillips.codes/).

To use it, launch Neovide the same way you'd launch any other application, or execute on terminal
```bash
nvim
```

## Configuration
Consult the [LazyVim documentation](https://www.lazyvim.org/configuration).
