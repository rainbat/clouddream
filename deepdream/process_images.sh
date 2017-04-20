#!/bin/bash
# Simple script to process all of the images inside the inputs/ folder
# We will be running this script inside the visionai/clouddream Docker image
# Copyright vision.ai, 2015

while [ true ];
do
    

    #./process_images_once.sh "1.0"  "inception_4c/output"    
    #./process_images_once.sh "5.0"  "inception_4c/output"    
    #./process_images_once.sh "10.0" "inception_4c/output"    
    #./process_images_once.sh "1.0"  "inception_3b/5x5_reduce"
    #./process_images_once.sh "5.0"  "inception_3b/5x5_reduce"
    #./process_images_once.sh "10.0" "inception_3b/5x5_reduce"
    #./process_images_once.sh "1.0"  "conv2/3x3"
    #./process_images_once.sh "5.0"  "conv2/3x3"
    #./process_images_once.sh "10.0" "conv2/3x3"

    source all.sh




    sleep 1
done
