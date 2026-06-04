#!/bin/sh

set -e

echo "🚀 macOS Bootstrap Starting..."

# Install Xcode Command Line Tools if missing

if ! xcode-select -p >/dev/null 2>&1; then
echo "Installing Xcode Command Line Tools..."
xcode-select --install
echo "Please complete the installation dialog, then re-run this script."
exit 1
fi

# Install Homebrew if missing

if ! command -v brew >/dev/null 2>&1; then
echo "Installing Homebrew..."

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Load Homebrew into current shell
if [ -f /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f /usr/local/bin/brew ]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi
```

else
echo "Homebrew already installed."
fi

echo "Updating Homebrew..."
brew update

echo "Installing packages from Brewfile..."
brew bundle --file=./Brewfile

echo "Cleaning up..."
brew cleanup

echo ""
echo "✅ Bootstrap complete."
echo "Installed packages from Brewfile."
