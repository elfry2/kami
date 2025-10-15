# kami
The perfect text editor–not. It's a script to install the [Neovim](https://neovim.io/) configuration I use mainly for web development.

## Features
All of the greatness of [LunarVim](https://www.lunarvim.org/), but
1. 

## Installation
Do not run the script (or any script) unless you understand what it does and you are sure that it does only what you want it to do. Make sure to not skip reading the output; there isn't much error-handling, if any, and you wouldn't want to think the script ran successfully when it didn't. Don't skip reading this README.md to the end either.

On [PowerShell 7+ on Windows](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.5), execute
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

Then follow the installation wizard.

There isn't yet an installer for other systems, but the steps are easy to reproduce.

## Things to know before using
To use kami in its full power, it is rather crucial to be familiar with [LunarVim](https://www.lunarvim.org/docs/beginners-guide).

The LunarVim website lists [PowerShell 7+](https://learn.microsoft.com/en-us/powershell/scripting/whats-new/migrating-from-windows-powershell-51-to-powershell-7?view=powershell-7.2) as one of the prerequisites on Windows.

To display icons, configure your terminal to use a nerd font. The script installs CaskaydiaCove Nerd Font.

On first run, you'd be staring at lazy.nvim doing its best setting up your environment. It is common here, especially on slower connections, to see some red scary git errors, but most of the time they can be solved simply by waiting for the process to finish and then hitting S (<Shift> s). The logs at the bottom might also require you to press <Space> sometimes. When everything is ready, type `:qa!` to quit Neovim.

## Usage

To start kami, navigate to the directory of your project, then execute
```bash
lvim
```

## Customisation
Consult the [lazy.nvim documentation](https://lazy.folke.io) and the [LunarVim documentation](https://www.lunarvim.org/docs/configuration).
