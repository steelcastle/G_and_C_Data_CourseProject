---
title: "README"
author: "GitHub_id: steelcastle"
date: "Date: August 22,2015"
output:
  html_document:
    keep_md: yes
---

## Project Description ##

The aim of this project is to put into practice the accepted processes
of creating "tidy" data. Processes and tools that have been presented 
during the Getting and Cleaning Data course are used to take raw data
from a "real-world" experiment and provide an R script file [run_analysis.R]() that
performs the cleaning of the raw data files, the [tidy data]() output file
along with an explanatory [README](#) markdown file and the [Codebook](https://github.com/steelcastle/G_and_C_Data_CourseProject/blob/master/Codebook.md) markdown file describing the values in the tidy data set produced after running the R script.

##Study design and data processing ##

<h2>Collection of the raw data</h2>

The data collection is described in this specific reference [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) which has been repeated below:

>*The experiments have been carried out with a group of 30 volunteers within
an age bracket of 19-48 years. Each person performed six activities (WALKING,
WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been video-recorded to
label the data manually. The obtained dataset has been randomly partitioned into
two sets, where 70% of the volunteers was selected for generating the training
data and 30% the test data.*

>*The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows of 2.56
sec and 50% overlap (128 readings/window). The sensor acceleration signal, which
has gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain.*

## Summary of raw data sets
Taken from The researchers' website [HAR@SMARTLAB](https://sites.google.com/site/harsmartlab/):

>Human Activity Recognition database built from the recordings of 30 subjects performing basic activities and postural transitions while carrying a waist-mounted smartphone with embedded inertial sensors.
- Data Set Characteristics: Multivariate, Time-Series
- Number of Instances: 10929
- Number of Attributes: 561
- Number of Classes: 12
- Associated Tasks: Classification, Clustering
- Missing Values: None

##Creating the tidy datafile ##

###Guide to create the tidy data file ##
Raw data is downloaded from here: [Human Activity Recognition Using Smartphones Data Set - UCI Machine Learning Repository](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

These raw data files are stored in the working directory. For the purposes of this assignment, it is assumed that these files are present therein prior to running the R script [run_analysis.R]().

###Cleaning of the data

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Use descriptive activity names to name the activities in the data set
4. Appropriately label the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject.

##Description of the variables in the tidydata.txt file
Please refer to the [Codebook.md](https://github.com/steelcastle/G_and_C_Data_CourseProject/blob/master/Codebook.md) file for details on the layout of the tidy data set file and the variables contained therein.



##Sources
These references were cited for this project:

1. [UCI Machine Learning Repository - Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#)
2. [HAR@SMARTLAB](https://sites.google.com/site/harsmartlab/)

