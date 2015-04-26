---
Title: "Readme - Human Activity Recognition Using Smartphones Data Set: 
    Independent tidy data set with the average of each variable for each activity and each subject" 
    (Coursera - GetData-013: Getting and Cleaning Data Project)
author: "Omkar Udipi"
date: "26 April 2015"
---

## Project Description
Source: Human Activity Recognition Using Smartphones Data Set
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

###Guide to create the tidy data file
Create an R script called run_analysis.R that does the following. 

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. 
  - dataframe used in R script: "labelsubjectTidyData" 
  - output: "HAR_testtrain_labelnamesubject_means.txt"


# Folder structure
- Working Directory
  - data
    - "UCI HAR Dataset"
      - train
      - test

(above illustration ignores subfolders in train and test)


# Steps before executing run_analysis.R:
1. Download archive file from url: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip archive file into local R working directory, under "data" subfolder, as shown above.
3. Install R packages reshape2 if not already installed

# Steps in run_analysis.R:
1. load reshape2 library
2. read the label codes key from activity_labels.txt into R activity_labels
3. read the feature variable names from features.txt into R features_columns
4. using grep, determine from features_columns which values contain mean OR std. Store in R feature_columns_extract
5. read from test folder
  1. read the subject data from subject_test.txt into R test_subject
  2. read the label from Y_test.txt into R test_Y
  3. read the test data from X_test.txt into R test_X. 
    1. Set read.csv's col.names = features_columns to dynamically set each variable name
  4. overwrite test_X dataframe to exclude variables not required. Subset using "feature_columns_extract" (ie: only store variable names with mean OR std)
  5. combine columns of test_Y, test_subject, test_X
6. read from train folder
  1. read the subject data from subject_train.txt into R train_subject
  2. read the label from Y_train.txt into R train_Y
  3. read the train data from X_train.txt into R train_X. 
    1. Set read.csv's col.names = features_columns to dynamically set each variable name
  4. overwrite train_X dataframe to exclude variables not required. Subset using "feature_columns_extract" (ie: only store variable names with mean OR std)
  5. combine columns of train_Y, train_subject, train_X
7. combine test and train dataframes using rbind() to testtrain_data
8. join activity_labels with testtrain_data, using labelindex as join keys (merge)
9. remove the labelindex (activity id) column from testtrain_data
10. melt testtrain_data using labelname (activity name) and subject
11. create tidy data labelsubjectTidyData of molten data to reshape data to use labelname and subject with aggregate mean: dcast(testtrainMelt, labelname + subject ~ variable, mean)
12. produce a tidy data set (HAR_testtrain_labelnamesubject_means.txt) with the average of each variable for each activity/subject combination
13. produce CodeBook_listofvariables.md with a list of column names which will be part of CodeBook.md
