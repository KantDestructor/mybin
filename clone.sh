#!/bin/bash

if [[ $# -lt 1 ]]
then
    echo "USAGE: clone.sh repo"
    exit 1
fi

git clone git@git.epitech.eu:/promte_a/$1

