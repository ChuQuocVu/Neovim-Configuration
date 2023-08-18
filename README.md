# Neovim setup

Requires [Neovim](https://neovim.io/) (>=0.8)

Before going to config neovim, we must to install some packages listed below.

# 1. First, you must install homebrew if use ubuntu

## 1.1. Open a command terminal

- Run terminal and then first, issue an update command

    `sudo apt-get update`
    `sudo apt-get install build-essential`

## 1.2. Install Git on Ubuntu

- For setting up LinuxBrew on Ubuntu 20.04 or 18.04, we need to install GIT on our system, here is the command for that

    `sudo apt install git -y`

## 1.3. Run Homebrew installation script

- Here is the command, just copy and run 

    `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

## 1.4. Add Homebrew to your PATH

- To run the brew command after installation, we need to add it to our system path 
- Add this command at the end of file ~/.bashrc

    `eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"`

## 1.5. Check Homebrew is working fine

- To ensure everything is working correctly to use brew, we should reload the terminal then run this command

    `brew doctor` or `brew --version`

# 2. Install neovim via brew (This will install the newest version of neovim instead of version 0.6)

- Run this command `brew install neovim`

# 3. Install plugin manager: Packer

- Install Packer by running the below command:

`git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

# 4. Install typescript language server itself

    `npm i -g typescript-language-server`

# 5. Install tree-sitter

    `brew install tree-sitter`

# 6. Install prettierd

    `brew install prettierd`

# Now, you are ready to config neovim

- Create the filepath `~/.config/nvim`, then copy all files cloned to `~/.config/nvim` folder -> cd to nvim folder

- Open file **plugins.lua** by neovim `nvim lua/plugins.lua` 

- Run this command in neovim `:PackerInstall`, then wait the Packer install all plugins in plugins.lua


--> Reopen file with neovim to enjoy!!
