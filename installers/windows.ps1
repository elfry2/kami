# Install and upgrade Chocolatey.
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco upgrade -y chocolatey

# Install the required Chocolatey packages.
choco install -y microsoft-windows-terminal git mingw fzf neovim neovide

# Install LazyVim.
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim-backup-$([int](Get-Date -UFormat %s -Millisecond 0))
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data-backup-$([int](Get-Date -UFormat %s -Millisecond 0))
git clone https://github.com/LazyVim/starter $env:LOCALAPPDATA\nvim
Remove-Item $env:LOCALAPPDATA\nvim\.git -Recurse -Force

# Add nvim-data to git safe directory.
git config --global --add safe.directory $env:LOCALAPPDATA\nvim-data\*

# Install kami.
Copy-Item -Recurse -Force -Path lua -Destination $env:LOCALAPPDATA\nvim
