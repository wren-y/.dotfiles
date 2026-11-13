#!/usr/bin/env bash

if [ -z "${ROFI_OUTSIDE}" ]; then
    echo "run this script in rofi"
    exit
fi

# directives first
echo -en "\x00no-custom\x1ffalse\n"
echo -en "\x00use-hot-keys\x1ftrue\n"

# update statusline only on selection
if [ -n "${ROFI_INFO}" ]; then
    echo -en "\x00message\x1f{content: \"${ROFI_INFO}\";}\n"
fi
echo -en "retv: ${ROFI_RETV}\x00info\x1fretv_entry\n"
echo -en "entry one\x00info\x1finfo about entry one\n"
echo -en "entry two\x00info\x1finfo about entry two\n"
echo -en "entry three\x00info\x1finfo about entry three\n"
