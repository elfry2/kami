# kami
The perfect text editor--not. It's the [Neovim](https://neovim.io/) configuration I mainly use for web development.

![image](https://github.com/elfry2/kami/assets/47256917/3bf4fe67-b6f8-4881-ac4c-3f1c68388492)

## Features
All of the greatness of [LazyVim](https://www.lazyvim.org/), but
1. ```jk``` is set as an alternative to ```<Esc>``` so all fingers can stay home more often and have quality time together
2. ```;'``` instead of ```<CR>``` is set as the confirmation key for [nvim-cmp](https://github,com/hrsh7th/nvim-cmp) to prevent the user from losing his mind
3. [kanagawa-dragon](https://github.com/rebelot/kanagawa.nvim) is set as the colorscheme for more comfortable late night sessions
4. [vim-jsx-improve](https://github.com/neoclide/vim-jsx-improve) is installed to support JSX files better
5. [tree-sitter-blade](https://github.com/EmranMR/tree-sitter-blade) is installed to support Blade files better

## Installation
Do not run the script (or any script) unless you understand what it does and you are sure that it does only what you want it to do. Be sure also not to skip reading any bolded output, since they contain information as to what you might have to do next.

In all of the following cases, [git](https://git-scm.com/) is required.

### Linux
Tested on Debian, but on most Linux systems it should be as easy as executing
```bash
git clone https://github.com/elfry2/kami
cd kami
./installers/linux.sh
```

### Windows
On PowerShell with [administrative privileges](https://answers.microsoft.com/en-us/windows/forum/all/run-as-administrator/03b301dc-0859-498a-8152-4a5924573d6e), execute
```powershell
git clone https://github.com/elfry2/kami
cd kami
.\installers\windows.ps1
```

The installation script for Windows also installs [Windows Terminal](https://github.com/microsoft/terminal) to support glyphs without installing anymore font and configuring the terminal to use it.

There isn't yet an installer for other systems, but the procedure is easy to reproduce.

## Usage
Before using kami, you are expected to be familiar with Neovim basic usage as well as basic plugin management via [lazy.nvim](https://lazy.folke.io/). It might be useful to also follow along with [this video](https://www.youtube.com/watch?v=N93cTbtLCIM), which walks you through the conveniences of LazyVim.

To use it, execute on terminal
```bash
nvim
```

[Neovide](https://neovide.dev/) is included as the GUI, but on Windows it isn't yet properly configured.

## Configuration
Consult the [LazyVim documentation](https://www.lazyvim.org/configuration).
