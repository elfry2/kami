# # Install and upgrade Chocolatey.
# Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
# choco upgrade -y chocolatey
#
# # Install the required Chocolatey packages.
# choco install -y microsoft-windows-terminal git mingw fzf neovim neovide nerd-fonts-cascadiacode
# Write-Host -ForegroundColor White "CaskaydiaCove Nerd Font installed. To display icons, configure your terminal to use a nerd font. If you can't find it, try restarting your terminal emulator."

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
scoop install git mingw fzf neovim neovide Cascadia-Code extras/windows-terminal

# Install LazyVim.
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim-backup-$([int](Get-Date -UFormat %s -Millisecond 0))
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data-backup-$([int](Get-Date -UFormat %s -Millisecond 0))
git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force

# Add nvim-data to git safe directory.
git config --global --add safe.directory $env:LOCALAPPDATA\nvim-data\*

# Install kami.
Copy-Item -Recurse -Force -Path config\nvim -Destination $env:LOCALAPPDATA

echo "Script finished. Make sure to read the output. To display icons, configure your terminal to use a nerd font. The script installed CaskaydiaCove Nerd Font Mono. After LazyVim finishes installing, it is recommended to run :LazyHealth after installation."
