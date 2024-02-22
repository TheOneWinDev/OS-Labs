#!/bin/bash

home_dir="/home/windev"

biggest_file=$(find $home_dir -maxdepth 1 -type f -printf '%s %p\n' | sort -n)

echo "Самый большой файл в домашнем каталоге: $biggest_file"