#!/bin/bash

original_string="$@"
repl_loc="/home/hogwarts/"
new_loc="/media/backup/"

result_str="${original_string/$repl_loc/$new_loc}"

if [ -z "$original_string" ]; then
    echo "Can't revert an empty file"
    exit
else
    echo "$result_str"
    if [ -e "$result_str" ]; then
        cp -rp "$result_str" "$original_string"
    else
        echo "No file to revert, sorry."
    fi
fi
