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
    success "Oh My Zsh installed!"
else
    echo "Oh My Zsh already installed, skipping step..."    
fi

# Check for Homebrew and install it if not present
if test ! $(which brew); then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
    success "Homebrew installed!"
else
    echo "Homebrew already installed, skipping step..."    
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles folder
rm -rf $HOME/.zshrc
ln -s .zshrc $HOME/.zshrc

# Update Homebrew
brew update

# Install software and dependencies with bundle (checkout my Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Symlink the Mackup config file to the home directory
ln -s .mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences - we will run this last because this will reload the shell
source ./.macos

echo "Setup completed!"
