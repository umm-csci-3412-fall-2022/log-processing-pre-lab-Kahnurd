#!/bin/sh

first_case=r0_input.txt
second_case=r1_input.txt
third_case=r2_input.txt

touch r0_output.txt
touch r1_output.txt
touch r2_output.txt


#awk -e '$2 ~ /^K/ {print $0}' "$first_case"


awk 'match ($0, /([a-zA-Z]+), ([a-zA-Z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n"; }' < "$first_case" > r0_output.txt

awk 'match($0, /([A-Z][a-zA-Z]+)\.\sMy\sfavorite\ssandwich\sis\s([a-z]+)/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n"}' < "$second_case" > r1_output.txt

awk 'match($0, /([a-zA-Z]+), ([a-zA-Z]+\.[a-zA-Z]\.[a-zA-Z])/, groups) {print "1. " groups[1] "\n" "2. " groups[2] "\n" }' < "$third_case" > r2_output.txt
