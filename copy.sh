#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    rsync -avz ~/.zshrc .zshrc_linux
    rsync -avz ~/.antigen .antigen_linux
    rsync -avz ~/.config/konsolerc .config_linux/konsolerc_linux
    rsync -avz ~/.config/yakuakerc .config_linux/yakuakerc_linux
    rsync -avz ~/.config/nvim/init.vim .config_linux/nvim/init.vim
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    rsync -avz ~/.zshrc .zshrc_macos
    rsync -avz ~/.antigen .antigen_macos
    rsync -avz ~/.config/nvim/init.vim .config_macos/nvim/init.vim
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # FreeBSD
    rsync -avz ~/.zshrc .zshrc_freebsd
    rsync -avz ~/.antigen .antigen_freebsd
    rsync -avz ~/.config/konsolerc konsolerc_freebsd
    rsync -avz ~/.config/yakuakerc yakuakerc_freebsd
    rsync -avz ~/.config/nvim/init.vim .config_freebsd/nvim/init.vim
else
    echo "Unsupported operating system: $OSTYPE"
    exit 1
fi

echo "Files copied and renamed based on the current operating system."
