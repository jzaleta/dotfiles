#!/bin/sh

# Setup intro; ask for confirmation before installing my dotfiles
echo -e "\033[31mHey! I'm Javier's dotfiles manager. ◕ ◡ ◕ っ\033[0m"
echo -e "\033[31mThis script will set up your Mac by installing Oh My Zsh, Homebrew and his various dotfiles.\033[0m"
echo -n "Are you sure you want to continue? (yes/no): "
read choice

# Check user's choice and convert the input to lowercase
user_choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')

if [[ $user_choice != "yes" ]]; then
    echo "Setup canceled."
    exit 1
fi

# This is where the fun begins!
echo "Setting up your Mac..."

# Check for Oh My Zsh and install it if not present
if test ! $(which omz); then
    /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Update Homebrew
brew update

# Install software and dependencies with bundle using my Brewfile
ln -s "$HOME/.dotfiles/.config/Homebrew/Brewfile" "$HOME/Brewfile"
brew bundle --file "$HOME/Brewfile"

# Create symbolic links for dotfiles
ln -s "$HOME/.dotfiles/.config/zsh/.zshrc" "$HOME/.zshrc"
ln -s "$HOME/.dotfiles/.config/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
ln -s "$HOME/.dotfiles/.config/starship/starship.toml" "$HOME/.config/starship.toml"
ln -s "$HOME/.dotfiles/.hammerspoon/init.lua" "$HOME/.hammerspoon/init.lua"
ln -s "$HOME/.dotfiles/wallpapers" "$HOME/Documents/Wallpapers"
ln -s "$HOME/.dotfiles/macos/.macos" "$HOME/.macos"

# Set macOS preferences from the new .macos file
source "$HOME/.macos"

echo "Setup completed!"
