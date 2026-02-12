#!/usr/bin/env bash

echo "Installing Packages........"
sleep 5
if [ -x "$(command -v apt-get)" ]; then
	sudo apt update
	sudo apt install -y vim clangd picom rofi feh flameshot alacritty ghostty fastfetch i3 nodejs npm bat
	sudo apt-get install -y ninja-build gettext cmake curl build-essential git
	(
		cd ~/
		git clone https://github.com/neovim/neovim
		cd neovim
		make CMAKE_BUILD_TYPE=RelWithDebInfo
		sudo make install
		)
elif [ -x "$(command -v pacman)" ]; then
	sudo pacman --noconfirm -Sy
	sudo pacman --noconfirm -S vim clang picom rofi feh flameshot alacritty ghostty fastfetch i3 nodejs npm bat cmake
	read -r -p "Do you want to buid neovim from source? (yes->y or any other key->no): " choice
	if [[ $choice = "y" ]]; then
		(
			sudo pacman --noconfirm -S --needed base-devel cmake lua python python3 curl
			cd ~/
			git clone https://github.com/neovim/neovim
			cd neovim
			make CMAKE_BUILD_TYPE=RelWithDebInfo
			sudo make install
		)
	else
		yes|sudo pacman -S neovim
	fi
elif [ -x "$(command -v zypper)" ]; then
	sudo zypper patch
	yes | sudo zypper install vim vim-data clangd picom rofi feh flameshot alacritty fastfetch ghostty i3 nodejs npm bat
	read -r -p "Do you want to buid neovim from source? (yes->y or any other key->no): " choice
	if [[ $choice = "y" ]]; then
		(
			yes|sudo zypper install ninja-build gettext cmake curl build-essential git
			cd ~/
			git clone https://github.com/neovim/neovim
			cd neovim
			make CMAKE_BUILD_TYPE=RelWithDebInfo
			sudo make install
		)
	else
		yes|sudo zypper install neovim
	fi

fi
