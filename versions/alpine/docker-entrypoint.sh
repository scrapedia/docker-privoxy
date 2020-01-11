#!/bin/sh

if ! [ -x "$(command -v $1)" ]
then
    echo "$1 doese not exist."
    exit 1
fi

EXE=$1
shift

su-exec privoxy $EXE $@
