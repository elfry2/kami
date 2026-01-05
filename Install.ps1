Write-Output  "This script overwrites your current Neovim configuration. You might want to backup before proceeding. To terminate the script, press Ctrl+C. To proceed, press any other key..."
Read-Host | Out-Null

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
scoop install CascadiaCode-NF extras/vcredist2022 neovim neovide nodejs-lts

# Install the required npm packages.
npm install -g blade-formatter

# Add Open with Neovide to context menu.
reg import "C:\Users\Elfry\scoop\apps\neovide\current\install-context.reg"

# Install kami.
Remove-Item -Recurse -Verbose -Force ~/AppData/Local/nvim/lua/scripts
Copy-Item -Recurse -Verbose -Force nvim ~/AppData/Local/
Write-Output "kami installed."
