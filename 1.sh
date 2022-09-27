#!/bin/bash

echo `ls $1`

function CopyFileToTargetFolder() {
    for file in `ls $1`
	do
	    if [ -d $1"/"$file ];then
	        CopyFileToTargetFolder $1"/"$file
        elif [ -f $1"/"$file ];then		
	        str=1"/"$file
	        if [ "${str##*.}"x = "so"x ];then
	            cp $1"/"$file /home/jack/learning/shell/target #目标路径
	            echo $1"/"$file
            fi
	    fi
    done
}

SourcePath='/home/jack/learning/shell/src' #源路径
CopyFileToTargetFolder $SourcePath  

