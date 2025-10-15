# Install and upgrade Scoop.
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
if(-Not (Get-Command scoop -errorAction SilentlyContinue)) {
  Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

# Install git Scoop package.
scoop install git

# Install the required Scoop buckets.
scoop bucket add extras
scoop bucket add nerd-fonts

# Install the required Scoop packages.
scoop install make python nodejs cargo-binstall ripgrep lazygit CascadiaCode-NF neovim neovide

# Add Open with Neovide as a context menu option
reg import "C:\Users\Elfry\scoop\apps\neovide\current\install-context.reg" 

# Install LunarVim.
pwsh -c "`$LV_BRANCH='release-1.4/neovim-0.9'; iwr https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.ps1 -UseBasicParsing | iex"