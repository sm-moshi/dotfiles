#!/bin/sh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    cp ~/.zshrc .zshrc_linux
    cp ~/.antigen .antigen_linux
    cp ~/.config/konsolerc .config_linux/konsolerc_linux
    cp ~/.config/yakuakerc .config_linux/yakuakerc_linux
    cp ~/.config/nvim/init.vim .config_linux/nvim-init_linux.vim
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    cp ~/.zshrc zshrc_macos
    cp ~/.antigen antigen_macos
    cp ~/.config/konsolerc konsolerc_macos
    cp ~/.config/yakuakerc yakuakerc_macos
    cp ~/.config/nvim/init.vim nvim-init_macos.vim
elif [[ "$OSTYPE" == "freebsd"* ]]; then
    # FreeBSD
    cp ~/.zshrc zshrc_freebsd
    cp ~/.antigen antigen_freebsd
    cp ~/.config/konsolerc konsolerc_freebsd
    cp ~/.config/yakuakerc yakuakerc_freebsd
    cp ~/.config/nvim/init.vim nvim-init_freebsd.vim
else
    echo "Unsupported operating system: $OSTYPE"
    exit 1
fi

echo "Files copied and renamed based on the current operating system."
