#!/bin/sh

FR_PROJECT=~/llvm-project
TO_PROJECT=~/todd-cpu0/src

cd $FR_PROJECT

git status | awk '$1=$1' | grep -e '^modified:' | awk '{print $2}' > modified_list.txt

for modified_file in $(cat modified_list.txt)
{    
    fr_path=$FR_PROJECT/$modified_file
    to_path=$TO_PROJECT/$modified_file

    echo "update: " $modified_file
    #echo $fr_path
    #echo $to_path

    mkdir -p $(dirname $to_path)
    cp -frv $fr_path $to_path
}

rm -f modified_list.txt