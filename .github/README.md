# 🏠 Javier's .dotfiles

> There's no place like ~/

<!-- BADGES -->
<div align="center">
  
![Stars](https://img.shields.io/github/stars/jzaleta/config?style=for-the-badge&logo=starship&color=9ece6a&logoColor=D9E0EE&labelColor=1A1B26)
![License](https://img.shields.io/github/license/jzaleta/config?style=for-the-badge&logo=starship&color=%23e0af68&logoColor=D9E0EE&labelColor=1A1B26)
![Repo Size](https://img.shields.io/github/repo-size/jzaleta/config?style=for-the-badge&logo=codesandbox&color=FCA2AA&logoColor=D9E0EE&labelColor=1A1B26)

</div>

## 🌿 About

<div align="center">
  
My dotfiles include *zsh*, *brew*, *starship*, *vscode*, *kitty*, *nix*, *.macos*, *(n)vim* and *more* config files, safeguarded just in case my laptop goes kaput or super smart AIs decide to take over the world, you know?

</div>

<div align="center">
  
![](assets/setup.png)

</div>

> Desktop preview ↑

This configuration was made for my personal setup so some things might not work for you out-of-the-box. Feel free to go through the files in this repo and tweak everything to your liking! Just remember to create first a backup of your dotfiles (if any). 

## 🔍 Technical specifications

**I'm a self-taught software engineer and a medical student, which means my workflow is a bit unconventional.**

- I use both local tools on my computer for college and some projects and a virtual machine (Nix) that comes into play when dealing with specific development challenges.
- It's a pretty cool mix of practicality and adaptability.
- Definitely not something I could have tackled without overthinking and over-engineering).

| Feature              | Package                                                 |
| -------------------- | ------------------------------------------------------- |
| Package Manager      | [`homebrew`](https://github.com/Homebrew/brew) and [`nix`](https://github.com/NixOS/nixpkgs) |
| Window Manager       | [`rectangle`](https://github.com/rxhanson/Rectangle) |
| Terminal             | [`kitty`](https://github.com/kovidgoyal/kitty) |
| Shell                | [`zsh`](https://www.zsh.org/) |
| Editor               | [`vscode`](https://github.com/microsoft/vscode) and [`neovim`](https://github.com/neovim/neovim) |
| Prompt               | [`starship`](https://github.com/starship/starship) |

## 📷 Showcase

## 🛠️ Configuration

> ⚠️ **Note**: Dotfiles are all the hidden settings and configuration files you have on your Unix system. You are expected to have a basic understanding of the unix system before starting to work with dotfiles.

At first I wanted to use a manager tool for my dotfiles, but now, even though I tend to overthink, I've switched to another way to keep things easy peasy:

I have a dedicated directory named ```~/dotfiles``` residing comfortably within the ```$HOME``` directory. It acts as a sort of command center for all my configs under the watchful eye of Git.

From there, I transfer my config files to ```$HOME```, preventing me from Git-ifying my entire ```$HOME``` (There was this one accidental time I did that but let's not delve into that story).

Anyway, by using this method, I can smoothly manage everything across different devices and even create a fresh setup if needed (because you never know when your machine might decide to have a meltdown, trust me, it will happen one day).

### TL;DR:

**1. Clone my dotfiles repo to ~/.dotfiles with:**
```sh
git clone https://github.com/jzaleta/dotfiles ~/.dotfiles
```

**2. Now, inside $HOME:**
- Move the things you'll use.
> If manually shifting everything to where it's meant to be originally isn't your thing, you can just use symlinks. ¯\_(ツ)_/¯

- Run the [setup.sh](https://github.com/jzaleta/dotfiles/blob/main/setup.sh) script inside your $HOME directory to install Oh-My-ZSH, Homebrew and apply my macOS settings!

**3. Enjoy your new dotfiles!**
   

   
## 💻 Applications

I use a lot of apps on my mac. Below is a list of my favorite tools with descriptions of how I use them. 
