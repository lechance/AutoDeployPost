#!/bin/bash

##
## created by lechance 
## write new post for jekyll
##
echo -e "writing new post\n"

input_post=$1
now_time=$(date +"%Y-%m-%d")
now_time_sec=$(date +"%Y-%m-%d %R")
file_name="$now_time-$input_post.md"

echo "File Name: $file_name"

DES_DIR=./_posts/$file_name

# append front matter

echo -e "---\ntitle: $input_post\ndate: $now_time_sec\ncategories:\ntags:\-\n---\n" > $DES_DIR 
echo "Created success"
exit 0
