#! /bin/bash

my_date=`date +%m-%d-%Y`
fileName=$1
answered=
if [[ ! $fileName ]]; then
    while [[ ! $answered ]]; do
    echo "Please add a file name to the argument."
    read -r answer
    echo $answer
        if [[ $answer ]]; then
            answered="$answer"
        fi
    done
    fileName=$answered
fi


if [[ -e $fileName ]]; then
    fileName_bak="$fileName.bak_$my_date"
    if [[ -e $fileName_bak ]]; then
        echo -n "Do you want to replace $fileName_bak. Enter [Y] for Yes or [N]for No."
        read -r yesOrNo
        echo $yesOrNo
        if [[ $yesOrNo = [Yy] ]]; then
            echo "In line 26"
            cp -R $fileName "$fileName.bak_$my_date"
        elif [[ $yesOrNo = [Nn] ]]; then
            echo "In line 29"
            echo "File not overwritten!"
            exit
        else
            echo "In line 33"
            echo "Pls enter a valid answer."
        fi
    else 
        echo "In line 37"
        cp $fileName $fileName_bak
    fi
else
    touch $fileName
fi

