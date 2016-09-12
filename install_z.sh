#!/bin/bash

if ! [ -d "~/bin" ]; then
    git clone https://github.com/rupa/z.git ~/bin/z
else
    echo "Bin in your home directory doesn't exist"
fi
