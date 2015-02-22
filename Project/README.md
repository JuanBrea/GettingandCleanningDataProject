---
title: "Readme for Code Book for Getting and Cleaning Data class Project"
author: "JuanBrea"
date: "Friday, February 20, 2015"
output: html_document
---

Files included in the project are:
run_analysis.R
    This file contains two scripts:
    a) run_analysis() 
        Runs the all data gathering. It assumes the directory UCI HAR Dataset is in the home directory of R 
        
        reads the list of features from the file features.txt
        reads the list of vector of vulunter_id from ./train/subject_train.txt and ./test/subject_test.txt respectively
        reads the activity perform from ./train/y_train.txt and ./test/y_test.txt respectively
        reads The features measurement from ./train/X-train.txt and ./test/X_test respectively
        it extract all the features tha relate to standard deviation and mean measurements and merges them to the above data
        It replaces all the activity labels with the corresponding human readable text:
                1 WALKING
                2 WALKING_UPSTAIRS
                3 WALKING_DOWNSTAIRS
                4 SITTING
                5 STANDING
                6 LAYING
        Saves this big data into a file combinedData.txt
        lastly it calculates the mean for each feature per volunteer id and activity and saves the result in the file combinedMeanData.txt
        retuns a data.frame with the content of combinedDat.txt


A second script getMeans() returns the content of the file combinedMeandata.txt