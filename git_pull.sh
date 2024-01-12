#!/bin/bash

# Define the directories you want to run git pull in
directories=(~/repos ~/.config)

# Loop through the directories and run git pull in each one
for dir in "${directories[@]}"
do
	find "$dir" -name ".git" -type d -printf "Directory: %h\n" -execdir git pull \;
done
