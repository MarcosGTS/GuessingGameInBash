#! /bin/usr/ven bash
function advise {
    if [[ $1 -gt $2 ]]
    then 
        echo to height
    elif [[ $1 -lt $2 ]]
    then 
        echo to low 
    fi
}

fileNum=$( ls -l | egrep "^-" | wc -l )
echo How many files are in 
echo the current directory?

trys=1

while [[ $guess -ne $fileNum ]]
do 
    echo -n Guess:
    read guess
    
    if [[ $guess =~ [a-zA-Z] ]] 
    then 
        echo you should type a number
    elif [[ $guess -ne $fileNum ]]
    then 
        advise $guess $fileNum 
    elif [[ $guess -eq $fileNum ]] 
    then
        echo -------------------------
        echo Congratulation, you win!!
        echo Number of attempts: $trys
        echo -------------------------
    fi 
    
    let trys=$trys+1
done

