---
title:  "Codebook"
author:  "GitHub_id: steelcastle"
date:  "Date: August 22,2015"
output:
  html_document:
    keep_md: yes
---
# Overview #
This codebook is a required element of the course project submission for the online course
*Getting and Cleaning Data* offered by Johns Hopkins University through Coursera.
For more background information, please consult the accompanying [README](https://github.com/steelcastle/G_and_C_Data_CourseProject/blob/master/README.md) file.

## Prerequisites ##
The analysis script requires that the raw data source files be present in the working directory. The **_dplyr_** package must also be loaded.

## Notes on data grooming ##
Although the names of variables are somewhat cryptic, a small effort is made to groom those names to remove unwanted parentheses and change the strings "mean" and "std" to "Mean" and "StdDev" respectively. 

##Description of the variables in the tidydata.txt file
The run_analysis.R script will output a text file named  [tidydata.txt](https://github.com/steelcastle/G_and_C_Data_CourseProject/blob/master/tidydata.txt) in the working directory.

The resulting dataset dimensions are 180 rows by 68 columns. Each row represents the mean of
observed variables aggregated by activity and subject id. The first column represents the
specific activity being observed (5 activities in total) and the second column identified the
specific subject carrying out that activity. Each subsequent column represents the calculated
mean value of the measured variable across the set of observations for each subject (30
subjects in total).

###Variables within tidydata
Short description of what the variable describes.

**_NOTE:_**

In all of the measurement variables, the text tokens have the following meanings.

Token Description | Meaning
----------------- | -------
t | Prefix denoting time domain signals captured at a constant rate of 50 Hz.
f | Prefix to indicate frequency domain signals - Fast Fourier Transform applied to time based signals. 
Acc | 3-axial measurement taken from accelerometer 
Body | Signal based on the body of an experiment participant
Gravity | Signal based on gravity, the force that attracts a body towards the center of objects (in this case, the Earth)
Gyro | 3-axial measurement taken from gyroscope 
Jerk | Measurement of the rate of change of the acceleration, based on body acceleration and angular velocity
Mag | Measurement of the magnitude of the Euclidean norm (i.e. length of a vector from the origin) of a three-dimensional signal
Mean | Indicates that the measurement is a mean (normailized to line in the range [-1,1])
MeanOf | Measurement is a mean calculated over all observations for a particular activity ans subject.
StdDev | Measurement is a standard deviation 
X, Y, Z | Measurement taken in one of the three dimensions considered



Column variable  | Class | Value
------------- | ------------- | -------------
Activity | *character* | Identifier for type of activity under observation. Can be one of 6 values: LAYING, SITTING, STANDING, WALKING, WALKING\_DOWNSTAIRS, WALKING\_UPSTAIRS
Subject | *integer* | Identifier of subject being observed. Can take on values from 1 to 30.
MeanOf_tBodyAccMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]
MeanOf_tBodyAccMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_tBodyAccMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]         
MeanOf_tBodyAccStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_tBodyAccStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]       
MeanOf_tBodyAccStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_tGravityAccMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_tGravityAccMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_tGravityAccMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_tGravityAccStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1]   
MeanOf_tGravityAccStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_tGravityAccStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]   
MeanOf_tBodyAccJerkMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_tBodyAccJerkMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_tBodyAccJerkMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_tBodyAccJerkStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1]  
MeanOf_tBodyAccJerkStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]   
MeanOf_tBodyAccJerkStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]  
MeanOf_tBodyGyroMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_tBodyGyroMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]       
MeanOf_tBodyGyroMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_tBodyGyroStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_tBodyGyroStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_tBodyGyroStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_tBodyGyroJerkMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_tBodyGyroJerkMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]   
MeanOf_tBodyGyroJerkMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_tBodyGyroJerkStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1] 
MeanOf_tBodyGyroJerkStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]  
MeanOf_tBodyGyroJerkStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1] 
MeanOf_tBodyAccMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_tBodyAccMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_tGravityAccMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_tGravityAccMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1]  
MeanOf_tBodyAccJerkMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_tBodyAccJerkMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1] 
MeanOf_tBodyGyroMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]       
MeanOf_tBodyGyroMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_tBodyGyroJerkMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]   
MeanOf_tBodyGyroJerkMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1]
MeanOf_fBodyAccMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]         
MeanOf_fBodyAccMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_fBodyAccMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]         
MeanOf_fBodyAccStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_fBodyAccStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]       
MeanOf_fBodyAccStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_fBodyAccJerkMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_fBodyAccJerkMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_fBodyAccJerkMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_fBodyAccJerkStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1]  
MeanOf_fBodyAccJerkStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]   
MeanOf_fBodyAccJerkStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]  
MeanOf_fBodyGyroMean-X  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_fBodyGyroMean-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]       
MeanOf_fBodyGyroMean-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_fBodyGyroStdDev-X  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_fBodyGyroStdDev-Y  | *numeric* | Feature values are normalized and bounded within [-1,1]      
MeanOf_fBodyGyroStdDev-Z  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_fBodyAccMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]        
MeanOf_fBodyAccMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1]     
MeanOf_fBodyAccJerkMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_fBodyAccJerkMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1] 
MeanOf_fBodyGyroMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]       
MeanOf_fBodyGyroMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1]    
MeanOf_fBodyGyroJerkMagMean  | *numeric* | Feature values are normalized and bounded within [-1,1]   
MeanOf_fBodyGyroJerkMagStdDev  | *numeric* | Feature values are normalized and bounded within [-1,1]





