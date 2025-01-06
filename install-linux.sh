#!/bin/bash

# Install fzf.
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all

# Install RobotoMono Nerd Font.
echo "Installing RobotoMono Nerd Font..."
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/RobotoMono.zip
sudo mkdir -v /usr/share/fonts/truetype/roboto-mono-nerd
sudo unzip -o RobotoMono.zip -d /usr/share/fonts/truetype/roboto-mono-nerd
sudo fc-cache -fv
echo -e "\033[1mRoboto Mono Nerd Font installed. To display icons, configure your terminal to use a nerd font.\033[0m"

# Install Neovim Nightly binary.
echo "Installing Neovim..."
#curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-linux64.tar.gz
sudo rm -rvf /opt/nvim
sudo tar -C /opt -xzvf nvim-linux64.tar.gz
echo "Neovim installed."

# Install Neovide binary.
echo "Installing Neovide..."
curl -LO https://github.com/neovide/neovide/releases/latest/download/neovide-linux-x86_64.tar.gz.zip
sudo rm -rvf /opt/Neovide
sudo mkdir -v /opt/Neovide
unzip -o neovide-linux-x86_64.tar.gz.zip
sudo tar -C /opt/Neovide -xf neovide-linux-x86_64.tar
sudo curl -LO https://neovide.dev/assets/neovide-128x128.png --output-dir /usr/share/icons
sudo cp -v neovide.desktop /usr/share/applications
echo -e "\033[1mNeovide installed. You can now launch it like you would launch any other desktop application.\033[0m"

# Install LazyVim.
echo "Backing up current Neovim configuration directories..."
mv -v ~/.config/nvim ~/.config/nvim-backup-$(date +%s)
mv -v ~/.local/share/nvim ~/.local/share/nvim-backup-$(date +%s)
mv -v ~/.local/state/nvim ~/.local/state/nvim-backup-$(date +%s)
mv -v ~/.cache/nvim ~/.cache/nvim-backup-$(date +%s)
echo "Configuration directories backed up."
echo "Installing LazyVim..."
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
echo "LazyVim installed."

# Clean up.
rm *.tar* *.zip

# Insert paths to and reload the shell's rc file.
rcFilePath=$HOME/.bashrc
kamiPathString="export PATH=\"\$PATH:/opt/nvim-linux64/bin\""
if ! grep -wq "$kamiPathString" $rcFilePath ; then
	echo "" >> $rcFilePath
	echo $kamiPathString >> $rcFilePath
fi
source $rcFilePath

# Install kami.
echo "Installing kami..."
rsync -avh --progress config/ $HOME/.config/

echo -e "\033[1mKami installed. You might need to restart your shell or reload its configuration file before using it. On bash you can execute:\033[0m"
echo -e "\033[1m\tsource ~/.bashrc\033[0m"
