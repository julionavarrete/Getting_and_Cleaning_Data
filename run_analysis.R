# 1. Merges the training and the test sets to create one data set

## Read train and test files
DataTrainX <- read.table("./UCI_HAR_Dataset/train/X_train.txt")
DataTestX <- read.table("./UCI_HAR_Dataset/test/X_test.txt")

## Read train and test label files
DataTrainY <- read.table("./UCI_HAR_Dataset/train/Y_train.txt")
DataTestY <- read.table("./UCI_HAR_Dataset/test/Y_test.txt")

## Read train subjects
SubjectTrain <- read.table("./UCI_HAR_Dataset/train/subject_train.txt")
SubjectTest <- read.table("./UCI_HAR_Dataset/test/subject_test.txt")

## Merge train and test datasets
datamerged <- rbind(DataTrainX, DataTestX)

## Merge train and Test Labels
labelmerged <- rbind(DataTrainY, DataTestY)

## Merge train and test subjects
subjectmerged <- rbind(SubjectTrain, SubjectTest)





# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("./UCI_HAR_Dataset/features.txt")
mean_and_std_features <- grep("-(mean|std)\\(\\)", features[, 2]) ##extract names that contains mean and std
onlymeanstd <- datamerged[, mean_and_std_features]





# 3. Uses descriptive activity names to name the activities in the data set

activities <- read.table("./UCI_HAR_Dataset/activity_labels.txt")
## replace activity code for appropiate name
labelmerged[,1] <- activities[labelmerged[,1],2] 





# 4. Appropriately labels the data set with descriptive variable names
## name new columms - Activity and Subject
names(labelmerged) <- "Activity"
names(subjectmerged) <- "subject"
names(onlymeanstd) <- features[mean_and_std_features, 2] ## assign columms names

## Merge all data - subset dataset, labels and subjects
all_merged <- cbind(onlymeanstd, labelmerged, subjectmerged)




# 5.  From the data set in step 4, creates a second, independent tidy data set with the average of each 
#     variable for each activity and each subject.

average_data <- ddply(all_merged, .(subject, Activity), function(x) colMeans(x[, 1:66]))




## Create a file with the average dataset
write.table(average_data, "averages_data.txt", row.name=FALSE)
