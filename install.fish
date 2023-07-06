#! /usr/bin/env fish

set -a casks kitty
set -a casks obsidian
set -a casks vivaldi
set -a casks keepassxc
set -a casks alfred
set -a casks caffeine
set -a casks moom
set -a casks visual-studio-code
set -a casks yubico-authenticator
set -a casks font-jetbrains-mono font-jetbrains-mono-nerd-font

set -a formulas bat exa zoxide
set -a formulas thefuck tldr
set -a formulas git
set -a formulas node pnpm
set -a formulas python
set -a formulas tmux
set -a formulas neovim
set -a formulas lazygit tree-sitter ripgrep
set -a formulas gnupg
set -a formulas yubikey-agent
set -a formulas unison

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher update

brew tap homebrew/cask-fonts

brew install $formulas
brew install --cask $casks

git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim
