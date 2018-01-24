#!/bin/bash

BIN=$0
API='https://api.github.com'
USER='KantDestructor'

function show_usage
{
    echo "USAGE: $BIN function [params]"
}

function param_or_usage
{
    if [ $# -eq 0 ]
    then
	show_usage
	exit 0
    fi
}

function create_repository ## Create a repository
{
    if [ $# -lt 2 ]
    then
	echo 'USAGE: $BIN create repo_name'
	exit 1
    fi
    echo "curl $API/user/repos -u $USER --data $2"
    curl $API/user/repos -u $USER --data "$2"
}

function delete_repository ## Delete a repository
{
    if [ $# -lt 2 ]
    then
	echo 'USAGE: $BIN delete repo_name'
	exit 1
    fi
    echo "curl $API/repos/$USER/$2 -u $USER -X DELETE -i"
    curl $API/repos/$USER/$2 -u $USER -X DELETE -i
}

param_or_usage "$@"
if [ "$1" = "create" ]
then
    create_repository "$@"
elif [ "$1" = "delete" ]
then
    delete_repository "$@"
fi

exit $?
