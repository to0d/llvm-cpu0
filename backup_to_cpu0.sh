#!/bin/sh

FR_PROJECT=~/llvm-project
TO_PROJECT=~/llvm-cpu0/src

cd $FR_PROJECT

git status > _tmp1.txt

cat _tmp1.txt | awk '$1=$1' | grep -e '^modified:' | awk '{print $2}' > update_list.txt
cat _tmp1.txt | awk '$1=$1' | grep -e '^new file:' | awk '{print $3}' >> update_list.txt

for modified_file in $(cat update_list.txt)
{    
    fr_path=$FR_PROJECT/$modified_file
    to_path=$TO_PROJECT/$modified_file

    echo "update: " $modified_file
    #echo $fr_path
    #echo $to_path

    mkdir -p $(dirname $to_path)
    cp -fr $fr_path $to_path
}



rm -f update_list.txt
rm -f _tmp1.txt