#!/bin/bash

function makeDiamonds {
    for (( i=1;i<=$1 ;i++))
    do
        for (( j=$1;j>=i;j-- ))
        do
            echo -n " "
        done
        for (( p=1;p<=i;p++ ))
        do
            echo -n " *"
            sum=$(($sum+1))
        done
        echo ""
    done

    maximum=$(($1 - 1))
    for (( i=maximum;i>=1;i--))
    do
        for (( j=i;j<=maximum;j++ ))
        do
            if [ $j -eq $maximum ]
            then
                echo -n " "
            fi
            echo -n " "
        done
        for (( p=1;p<=i;p++ ))
        do
            echo -n " *"
            sum=$(($sum+1))
        done
        echo ""
    done

}

read -p "Please Enter an Odd Number: " number

if [[ $((number%2)) -ne 0 ]]; then

        makeDiamonds $number
else
        echo Value not perfect
fi
