#! /bin/usr/ven bash

fileNum=$( ls -l | egrep "^-" | wc -l )
echo How many files are in 
echo the current directory?

trys=1

while [[ $shot -ne $fileNum ]]
do 
    echo -n Guess:
    read shot
    if [[ $shot =~ [a-zA-Z] ]] 
    then 
        echo you should type a number
    elif [[ $shot -gt $fileNum ]]
    then 
        echo too hight
    elif [[ $shot -lt $fileNum ]]
    then
        echo to low
    elif [[ $shot -eq $fileNum ]] 
    then
        echo Congratulation, you win!!
        echo Number of trys: $trys
    fi 
    
    let trys=$trys+1
done

