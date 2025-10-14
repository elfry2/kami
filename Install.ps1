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
scoop install make python nodejs cargo-binstall ripgrep lazygit neovim neovide lunarvim CascadiaCode-NF

# Install LunarVim.
lvim_install