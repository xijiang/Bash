#!/usr/bin/env bash
if [ $# -lt 1 ]
then
    echo
    echo Usage:
    echo "      " `basename $0` file-to-view
    echo
else
    #highlight  --out-format=xterm256 $1 | less -R
    pygmentize $@ | less -R
fi
