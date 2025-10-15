# Uninstall the required Scoop packages.
scoop uninstall make python nodejs cargo-binstall ripgrep lazygit CascadiaCode-NF neovide

# Uninstall LunarVim.
Invoke-WebRequest https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/uninstall.ps1 -UseBasicParsing | Invoke-Expression

# Refresh the environment variables.
.\RefreshEnv.ps1

echo "kami uninstalled. The script couldn't uninstall Neovim and CascadiaCode-NF; they have to be uninstalled manually."
