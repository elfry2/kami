# kami
The perfect text editor–not. It's a script to install the [Neovim](https://neovim.io/) configuration I use mainly for web development.

## Features
1. The stable branch of [nvim-mini/mini.deps](https://github.com/nvim-mini/mini.deps) as the plugin manager for a minimal and no-headache experience
2. ...

## Installation
Do not run the installation script (or any script) unless you understand what it does and you are sure that it does only what you want it to do. Make sure to not skip reading the output; there isn't much error-handling, if any, and you wouldn't want to think the script ran successfully when it didn't. Don't skip reading this README.md to the end either.

On PowerShell on Windows, execute
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

There isn't yet an installer for other systems, but the steps are easy to reproduce.

## Usage
Before using kami, it is crucial to be familiar with Neovim. There are many decent resources all over the internet, such as [https://github.com/ofirgall/learn-nvim](https://github.com/ofirgall/learn-nvim).

On the first time running kami after installation (or later), in the command-line mode, before anything else, be sure to execute
```vimscript
DepsUpdateOffline mini.nvim
```

To start kami, navigate to the folder of your project, then execute
```bash
nvim .
```

## Customisation
Scripts can be placed in `lua\scripts` in the config folder (`C:\Users\<User>\AppData\Local\nvim` by default) for them to be auto-loaded alphabetically.
