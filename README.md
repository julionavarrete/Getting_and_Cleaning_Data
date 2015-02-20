# Getting and Cleaning Data
## Course Project

You should create one R script called run_analysis.R that does the following. 

   1. Merges the training and the test sets to create one data set.
   2. Extracts only the measurements on the mean and standard deviation for each measurement. 
   3. Uses descriptive activity names to name the activities in the data set
   4. Appropriately labels the data set with descriptive variable names. 
   5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Instructions
   1. Download the data source and decompress it into your working directory. This will create a subdirectory name UCI HAR Dataset.
   2. Put the script run_analysis.R in the working directory.
   3. In RStudio, run source("run_analysis.R") and this will create a new file averages_data.txt in your working directory.

## Dependencies
The script run_analysis depends of the following packages that must be installed and loaded: data.table, plyr. 
