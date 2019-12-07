#!/bin/bash
rm -rf PyBitmessage

echo "Download folder from github"

git clone https://github.com/Bitmessage/PyBitmessage.git $HOME/PyBitmessage

python PyBitmessage/src/bitmessagemain.py
