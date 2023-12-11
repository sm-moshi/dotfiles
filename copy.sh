#!/bin/sh

OSTYPE=$(uname -s)

if [[ "$OSTYPE" == "Linux" ]]; then
    # Linux
    /usr/bin/rsync -avz ~/.zshrc .zshrc_linux
    /usr/bin/rsync -avz ~/.antigen .antigen_linux
    /usr/bin/rsync -avz ~/.config/konsolerc .config_linux/konsolerc
    /usr/bin/rsync -avz ~/.config/yakuakerc .config_linux/yakuakerc
    /usr/bin/rsync -avz ~/.config/nvim/init.vim .config_linux/nvim/init.vim
elif [[ "$OSTYPE" == "Darwin" ]]; then
    # macOS
    /opt/homebrew/bin/rsync -avz ~/.zshrc .zshrc_macos
    /opt/homebrew/bin/rsync -avz ~/.antigen .antigen_macos
    /opt/homebrew/bin/rsync -avz ~/.config/nvim/init.vim .config_macos/nvim/init.vim
elif [[ "$OSTYPE" == "FreeBSD" ]]; then
    # FreeBSD
    /usr/local/bin/rsync -avz ~/.zshrc .zshrc_freebsd
    /usr/local/bin/rsync -avz ~/.antigen .antigen_freebsd
    /usr/local/bin/rsync -avz ~/.config/konsolerc .config_freebsd/konsolerc
    /usr/local/bin/rsync -avz ~/.config/yakuakerc .config_freebsd/yakuakerc
    /usr/local/bin/rsync -avz ~/.config/nvim/init.vim .config_freebsd/nvim/init.vim
else
    echo "Unsupported operating system: $OSTYPE"
    exit 1
fi

echo "Files copied and renamed based on the current operating system."
