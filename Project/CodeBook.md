---
title: "Code Book for Getting and Cleaning Data class Project"
author: "JuanBrea"
date: "Friday, February 20, 2015"
output: html_document
---

The tidy data created for the project has the following variables

Volunteer_Id    Identifies one of the 30 volunteers that participated in the experiment
Activity        The volunteers where measured performming on of 6 activities as described in this column
 
                1 WALKING
                2 WALKING_UPSTAIRS
                3 WALKING_DOWNSTAIRS
                4 SITTING
                5 STANDING
                6 LAYING
UsedIn          A colum added by my script that identifies if the data was used in the training or test phases of the study
                This would allow the data to be split into its original form if needed

I series of mean and standard deviation features extracted from the dataset
"tBodyAcc.mean...X"              
"tBodyAcc.mean...Y"               "tBodyAcc.mean...Z"               "tGravityAcc.mean...X"           
"tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"            "tBodyAccJerk.mean...X"          
"tBodyAccJerk.mean...Y"           "tBodyAccJerk.mean...Z"           "tBodyGyro.mean...X"             
"tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"              "tBodyGyroJerk.mean...X"         
"tBodyGyroJerk.mean...Y"          "tBodyGyroJerk.mean...Z"          "tBodyAccMag.mean.."             
"tGravityAccMag.mean.."           "tBodyAccJerkMag.mean.."          "tBodyGyroMag.mean.."            
"tBodyGyroJerkMag.mean.."         "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
"fBodyAcc.mean...Z"               "fBodyAcc.meanFreq...X"           "fBodyAcc.meanFreq...Y"          
"fBodyAcc.meanFreq...Z"           "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"          
"fBodyAccJerk.mean...Z"           "fBodyAccJerk.meanFreq...X"       "fBodyAccJerk.meanFreq...Y"      
"fBodyAccJerk.meanFreq...Z"       "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
"fBodyGyro.mean...Z"              "fBodyGyro.meanFreq...X"          "fBodyGyro.meanFreq...Y"         
"fBodyGyro.meanFreq...Z"          "fBodyAccMag.mean.."              "fBodyAccMag.meanFreq.."         
"fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.meanFreq.."  "fBodyBodyGyroMag.mean.."        
"fBodyBodyGyroMag.meanFreq.."     "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.meanFreq.."
"tBodyAcc.std...X"                "tBodyAcc.std...Y"                "tBodyAcc.std...Z"               
"tGravityAcc.std...X"             "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
"tBodyAccJerk.std...X"            "tBodyAccJerk.std...Y"            "tBodyAccJerk.std...Z"           
"tBodyGyro.std...X"               "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
"tBodyGyroJerk.std...X"           "tBodyGyroJerk.std...Y"           "tBodyGyroJerk.std...Z"          
"tBodyAccMag.std.."               "tGravityAccMag.std.."            "tBodyAccJerkMag.std.."          
"tBodyGyroMag.std.."              "tBodyGyroJerkMag.std.."          "fBodyAcc.std...X"               
"fBodyAcc.std...Y"                "fBodyAcc.std...Z"                "fBodyAccJerk.std...X"           
"fBodyAccJerk.std...Y"            "fBodyAccJerk.std...Z"            "fBodyGyro.std...X"              
"fBodyGyro.std...Y"               "fBodyGyro.std...Z"               "fBodyAccMag.std.."              
"fBodyBodyAccJerkMag.std.."       "fBodyBodyGyroMag.std.."          "fBodyBodyGyroJerkMag.std.."     
> 