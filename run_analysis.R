## This script was made for the final Project of the "Getting and Cleaning Data"
## course. The goal of the script is to generate a tidy dataset from the "Human 
## Activity Recognition Using Smartphones" Dataset by Smartlab of the Università 
## degli Studi di Genova. To run this script the dplyr package is required
## Created by Miguel Arribas; July 2020; Spain

library(dplyr)  ## open the dplyr library

## 1.Download unzip and read the required data
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileURL, destfile= "./UCI-HAR_dataset.zip", method = "curl")
unzip("UCI-HAR_dataset.zip")
features <- read.table("./UCI HAR Dataset/features.txt")
actilabl <- read.table("./UCI HAR Dataset/activity_labels.txt")
subj_tst <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subj_tra <- read.table("./UCI HAR Dataset/train/subject_train.txt")
actv_tst <- read.table("./UCI HAR Dataset/test/y_test.txt")
actv_tra <- read.table("./UCI HAR Dataset/train/y_train.txt")
data_tst <- read.table("./UCI HAR Dataset/test/X_test.txt")
data_tra <- read.table("./UCI HAR Dataset/train/X_train.txt")

## 2.Combine the test and train datasets
subj <- bind_rows(subj_tst, subj_tra)
actv <- bind_rows(actv_tst, actv_tra)
data <- bind_rows(data_tst, data_tra)

## 3.Remove the not interesting variables except mean and std
feat_vld <- features$V2[grepl("mean|std", features$V2)] ##vctr of valid features
data_vld <- select_if(data, grepl("mean|std", features$V2)) ##only mean and std

## 4.Assign descriptive labels for the features
feat_vld <- gsub("^f","Freq", feat_vld)
feat_vld <- gsub("^t","Time", feat_vld)
feat_vld <- gsub("Acc","Acceleration", feat_vld)
feat_vld <- gsub("-mean\\(\\)","Mean", feat_vld)
feat_vld <- gsub("-std\\(\\)","Std", feat_vld)
feat_vld <- gsub("-meanFreq\\(\\)","MeanFreq", feat_vld)
feat_vld <- gsub("BodyBody","Body", feat_vld)

## 5.Label the data using descriptive names
names(data_vld) <- feat_vld
names(subj) <- "Subject"
names(actv) <- "Activity"

## 6.Asign descriptive names to the observed activities
actv$Activity <- as.character(actilabl[match(actv$Activity,actilabl$V1), 'V2'])

## 7.Merge all the variables on a single Data Frame: Subjects + Activities + rest of the data

all_data <- bind_cols(subj,actv,data_vld)

## 8.Sumarize the data grouped by subject and activity resulting a 180 obs DF

tidy_data <- all_data %>% group_by(Subject,Activity) %>% summarise_all(mean)

## 9.Export on a .txt file the ressulting data frame

write.table(tidy_data, "tidy_UCI_HAR.txt")