###### Peer-graded Assignment: Getting and Cleaning Data Course Project
###### 04-02-2017
###### File name: run_analysis.R
###### Description:
###### 
###### 1. Merges the training and the test sets to create one data set.
###### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
###### 3. Uses descriptive activity names to name the activities in the data set
###### 4. Appropriately labels the data set with descriptive variable names.
###### 5. From the data set in step 4, creates a second, independent tidy data set with the average 
######    of each variable for each activity and each subject.
###### 

# Load necessary libraries
library(reshape2)
library(dplyr)

# Downloading the file and unzipping
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile = "Dataset.zip", method = "curl")
unzip("Dataset.zip")

# Unzipped files should be located in a folder "UCI HAR Dataset"
# Creating path variables for easy access later
activity_labels_path <- "UCI HAR Dataset/activity_labels.txt"
features_path <- "UCI HAR Dataset/features.txt"
subject_test_path <- "UCI HAR Dataset/test/subject_test.txt"
X_test_path <- "UCI HAR Dataset/test/X_test.txt"
y_test_path <- "UCI HAR Dataset/test/y_test.txt"
subject_train_path <- "UCI HAR Dataset/train/subject_train.txt"
X_train_path <- "UCI HAR Dataset/train/X_train.txt"
y_train_path <- "UCI HAR Dataset/train/y_train.txt"

# Loading all files/tables into R
activity_labels <- read.table(activity_labels_path, colClasses = "character")
features <- read.table(features_path, colClasses = "character")
subject_test <- read.table(subject_test_path)
X_test <- read.table(X_test_path)
y_test <- read.table(y_test_path)
subject_train <- read.table(subject_train_path)
X_train <- read.table(X_train_path)
y_train <- read.table(y_train_path)

# 1. Merges the training and the test sets to create one data set.
subject <- rbind(subject_test, subject_train)
X <- rbind(X_test, X_train)
y <- rbind(y_test, y_train)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
colnames(X) <- features$V2
var <- grep("std\\(\\)|mean\\(\\)", features$V2)
mean_std_X <- X[var]
mean_std_data <- cbind(subject, y, mean_std_X)
colnames(mean_std_data)[1:2] <- c("Subject", "OutputActivity")

# 3. Uses descriptive activity names to name the activities in the data set
for (i in 1:nrow(activity_labels)) {
  mean_std_data$OutputActivity[which(mean_std_data$OutputActivity == activity_labels$V1[i])] <- activity_labels$V2[i]
}

# 4. Appropriately labels the data set with descriptive variable names.
names(mean_std_data) <- gsub("tBody", "timeBody", names(mean_std_data))
names(mean_std_data) <- gsub("tGrav", "timeGrav", names(mean_std_data))
names(mean_std_data) <- gsub("fBody", "freqBody", names(mean_std_data))
names(mean_std_data) <- gsub("Acc", "Accel", names(mean_std_data))
names(mean_std_data) <- gsub("\\(\\)", "", names(mean_std_data))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average 
#    of each variable for each activity and each subject.
tidy_data <- aggregate(mean_std_data[,3:length(mean_std_data)], list(Subject=mean_std_data$Subject, OutputActivity=mean_std_data$OutputActivity), mean)
tidy_data <- tidy_data[order(tidy_data$Subject, tidy_data$OutputActivity),]
  
# Write out data to "tidy_data.txt"
write.table(tidy_data, file = "tidy_data.txt", row.name=FALSE)