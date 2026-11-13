#!/usr/bin/env bash
DIR="${HOME}/.Xresources.d"
BIN="${DIR}/bin"
EXEC="set-color"
COLORS="${DIR}/colors"

if [ -n "$1" ]
then
    "${BIN}/${EXEC}" "$@" > /dev/null 2>&1
fi

ls "${COLORS}"


