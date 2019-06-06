#! /bin/bash
file="$1"
for i in {1..47}
do 
    if [ "$i" -lt 10 ]
    then 
        echo "0${i}0000" >> "$file"
    else
        echo "${i}0000" >> "$file"
    fi
done
