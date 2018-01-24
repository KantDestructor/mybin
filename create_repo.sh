#!/bin/bash

if [[ $# -lt 1 ]]
then
  echo "USAGE: create_repo [repo_name]"
  exit 1
fi

~/tmpblih/blih.py -u "adrien.promtep@epitech.eu" repository create $1
~/tmpblih/blih.py -u "adrien.promtep@epitech.eu" repository setacl $1 ramassage-tek r
