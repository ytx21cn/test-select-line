#!/bin/bash

select_line() {
	# 1: string
	# 2: line to select
	echo ${2} $(echo "${1}" | sed -n "${2}p")
}

# reference: https://stackoverflow.com/a/169517/7686917

str="The quick brown fox
jumps over
the lazy dog"
str_num_lines=$(echo "$str" | wc -l)
for i in $(seq 1 $str_num_lines); do
	select_line "${str}" "${i}"
done
