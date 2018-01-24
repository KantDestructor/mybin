#!/bin/bash

if [[ $# -lt 2 ]]
then
    echo "USAGE: setup.sh dest [c|cpp]"
    exit 1
fi

cp ~/etc/.editorconfig ~/etc/.gitignore ~/etc/$2_Makefile $1
mv $1/$2_Makefile $1/Makefile
