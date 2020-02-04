#!/bin/bash 
#written script will be for the Bash shell

read -p "What is the file name? " file
read -p "What is the delimiter? " deli
read -p "What do you want to rename the file? " ren
tail -n +2 ~/Developer/repos/CSB/unix/data/$file | cut -d "$deli" -f 2-6 | tr -s ";" " " | sort -r -n -k 6 > $ren.csv
# ignore the first row in the file | the deliminator is ; so take rows 2-6 | change the deliminator from ; to a space | sort the rows, focusing on numeric value column 6, in reverse 

#To make the script run from any prompt without typing bash, you need to add the shell script's directory to your PATH
#cd into your script directory then type the command "pwd" then copy the printed working directory into the command: "export PATH=$PATH:[path to directory]" this adds the script directory into the PATH
# change permissions to execute the created script
