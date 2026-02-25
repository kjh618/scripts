#!/bin/bash -ex

curl --output-dir ~/Downloads -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf ~/Downloads/nvim-linux-x86_64.tar.gz
