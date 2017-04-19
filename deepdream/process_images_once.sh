#!/bin/bash
# Simple script to process all of the images inside the inputs/ folder
# We will be running this script inside the visionai/clouddream Docker image
# Copyright vision.ai, 2015

file1=$(echo "$1")
file2=$(echo "$2" | sed -e "s/\//-/g")

cd /opt/deepdream/inputs

find . -type f -not -path '*/\.*' -print0 | while read -d $'\0' f;
do
    cd /opt/deepdream
    
    insert="_${file2}_${file1}"
    filename=$(echo "${f}" | sed "s/.jpg/$insert.jpg/g")
    
    echo "processing with $filename"

    if [ -e outputs/$filename ];
    then
		echo "... File $filename already processed"
    else
		echo "... Deepdream $filename"
		chmod gou+r inputs/${f}
		cp inputs/${f} input.jpg
		python deepdream.py $1 $2
		ERROR_CODE=$?
		echo "......Error Code is" ${ERROR_CODE}
		cp output.jpg outputs/$filename
		rm output.jpg
		echo "...Just created" outputs/$filename
    fi
done


