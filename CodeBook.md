# CodeBook
This code book describes the variables, the data, and any transformations or work that you performed to clean up the data.

## The Data Source Information

The data for the project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The data linked before represents data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiment has been carried out with a group of 30 volunteers within an age bracket of 19-48 years.  Each person performed six activities (Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying) wearing the smartphone. A full description is available at the site where the data was obtained.

## The Data Variables

The input dataset contains the following information 

- 'README.txt'
 
- 'features_info.txt': Shows information about the variables used on the feature vector.
 
- 'features.txt': List of all features (561 variables)
 
- 'activity_labels.txt': Links the class labels with their activity name.
 
- 'train/X_train.txt': Training set.
 
- 'train/y_train.txt': Training labels.
 
- 'test/X_test.txt': Test set.
 
- 'test/y_test.txt': Test labels.
 
The following files are available for the train and test data. Their descriptions are equivalent.
 
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.
 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.
 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.
 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

The output dataset averages_data.txt contains a subset of the original dataset:

- 66 variables that contains mean or stain its name
- 1 variable name subject
- 1 variable name Activity

## Transformation Detail

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## How the script run_analysis.R implements the transformations

* Reads train and test files
* Merge files using rbind and cbind 
* Subset only variables (columns) that contains mean or std.
* Append subject and Activity columns 
* Merge all data
* Create a new dataset with the average of each column group by subject and activity.
* Write an output file name averages_data.txt