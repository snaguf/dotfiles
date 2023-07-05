#! /bin/bash

# If on macOS, install Xcode Command Line Tools
if [[ "$OSTYPE" == "darwin"* ]]; then
  xcode-select --install
  read -p "Press Enter to continue after Xcode Command Line Tools is installed" < /dev/tty
fi

# Install Homebrew
NONINTERACTIVE=1
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install fish shell and add it as default shell
brew install fish
which fish | sudo tee -a /etc/shells
which fish | chsh -s
