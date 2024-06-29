#!/bin/bash

# Install RobotoMono Nerd Font.
echo "Installing RobotoMono Nerd Font..."
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip
sudo mkdir -v /usr/share/fonts/truetype/roboto-mono-nerd
sudo unzip RobotoMono.zip -v -d /usr/share/fonts/truetype/roboto-mono-nerd
sudo fc-cache -fv
echo "Roboto Mono Nerd Font installed. To display icons, configure your terminal to use a nerd font."

# Install Neovim binary.
echo "Installing Neovim..."
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rvf /opt/nvim
sudo tar -C /opt -xzvf nvim-linux64.tar.gz
echo "Neovim installed. If you haven't already, append the following line to your shell config (~/.bashrc, ~/.zshrc, ...) for convenience:"
echo "export PATH=\"\$PATH:/opt/nvim-linux64/bin\""

# Install Neovide binary.
echo "Installing Neovide..."
curl -LO https://github.com/neovide/neovide/releases/latest/download/neovide-linux-x86_64.tar.gz
sudo rm -rvf /opt/Neovide
sudo mkdir -v /opt/Neovide
sudo tar -C /opt/Neovide -xzvf neovide-linux-x86_64.tar.gz
sudo cp -v neovide.desktop /usr/share/applications
echo "Neovide installed. You can now launch it like you would launch any other desktop application."

# Install LazyVim.
echo "Backing up current Neovim configuration directories..."
mv -v ~/.config/nvim ~/.config/nvim.backup.$(date +%s)
mv -v ~/.local/share/nvim ~/.local/share/nvim.backup.$(date +%s)
mv -v ~/.local/state/nvim ~/.local/state/nvim.backup.$(date +%s)
mv -v ~/.cache/nvim ~/.cache/nvim.backup.$(date +%s)
echo "Configuration directories backed up."
echo "Installing LazyVim..."
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
echo "LazyVim installed."

# Install kami.
echo "Installing kami..."
rsync -avh --progress config/nvim/lua/ $HOME/.config/nvim/lua/
echo "kami installed."

# Clean up.
rm *.tar.gz *.zip
