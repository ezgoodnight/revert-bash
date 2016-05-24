#!/bin/bash

#n1=\'
original_string="$@"
backup_string=""
repl_loc="/home/hogwarts/"
new_loc="/media/backup/"

result_str="${original_string/$repl_loc/$new_loc}"
echo "$result_str"
echo "$original_string"

cp "$result_str" "$original_string"
