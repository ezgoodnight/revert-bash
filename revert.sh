#!/bin/bash

original_string="$@"
repl_loc="/home/hogwarts/"
new_loc="/media/backup/"

result_str="${original_string/$repl_loc/$new_loc}"
cp "$result_str" "$original_string"
