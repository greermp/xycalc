#!/bin/bash
cat output.txt | while read line 
do
    echo $line
    lineArray=($line)

    newFileName="SCNRIO.${lineArray[0]}nm${lineArray[2]}deg.txt"
    echo $newFileName
    cp template.txt $newFileName
    sed -i "s/<dist>/${lineArray[0]}/g" $newFileName
    sed -i "s/<degrees>/${lineArray[1]}/g" $newFileName
    sed -i "s/<x>/${lineArray[2]}/g" $newFileName
    sed -i "s/<y>/${lineArray[3]}/g" $newFileName
done