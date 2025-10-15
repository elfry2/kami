# Uninstall the required Scoop packages.
scoop uninstall mingw make python nodejs cargo-binstall ripgrep lazygit CascadiaCode-NF neovim neovide

# Uninstall LunarVim.
Invoke-WebRequest https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.ps1 -UseBasicParsing | Invoke-Expression

Write-Output "kami uninstalled."
