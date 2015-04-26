---
Title: "Codebook - Human Activity Recognition Using Smartphones Data Set: 
    Independent tidy data set with the average of each variable for each activity and each subject" 
    (Coursera - GetData-013)
author: "Omkar Udipi"
date: "26 April 2015"
---
 
## Project Description
Source: Human Activity Recognition Using Smartphones Data Set
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

 
##Study design and data processing
 
###Collection of the raw data
Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
 

##Creating the tidy datafile
 
###Guide to create the tidy data file
Create one R script called run_analysis.R that does the following. 

1. Merge the training and the test sets to create one data set.
2. Extract only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, create a second, independent tidy data set with the average of each variable for each activity and each subject. 
  - dataframe used in R script: "labelsubjectTidyData" 
  - output: "HAR_testtrain_labelnamesubject_means.txt"

###Cleaning of the data
Refer to assignment's README.md

##Description of the variables in the tiny_data.txt file
General description of the file including:
- Dimensions of the dataset
  - Rows: 180
  - Colums: 81
 
- Summary of the data
  - labelname: (Activity name) Factor w/ 6 levels 
    - "LAYING"
    - "SITTING"
    - "WALKING"
    - "WALKING_UPSTAIRS"
    - "WALKING_DOWNSTAIRS"
    - "STANDING"
  - subject - integer from 1 to 30
  - (remaining variables) - numeric

- Variables present in the dataset
 
  * labelname
  * subject
  * tBodyAcc-mean()-X
  * tBodyAcc-mean()-Y
  * tBodyAcc-mean()-Z
  * tBodyAcc-std()-X
  * tBodyAcc-std()-Y
  * tBodyAcc-std()-Z
  * tGravityAcc-mean()-X
  * tGravityAcc-mean()-Y
  * tGravityAcc-mean()-Z
  * tGravityAcc-std()-X
  * tGravityAcc-std()-Y
  * tGravityAcc-std()-Z
  * tBodyAccJerk-mean()-X
  * tBodyAccJerk-mean()-Y
  * tBodyAccJerk-mean()-Z
  * tBodyAccJerk-std()-X
  * tBodyAccJerk-std()-Y
  * tBodyAccJerk-std()-Z
  * tBodyGyro-mean()-X
  * tBodyGyro-mean()-Y
  * tBodyGyro-mean()-Z
  * tBodyGyro-std()-X
  * tBodyGyro-std()-Y
  * tBodyGyro-std()-Z
  * tBodyGyroJerk-mean()-X
  * tBodyGyroJerk-mean()-Y
  * tBodyGyroJerk-mean()-Z
  * tBodyGyroJerk-std()-X
  * tBodyGyroJerk-std()-Y
  * tBodyGyroJerk-std()-Z
  * tBodyAccMag-mean()
  * tBodyAccMag-std()
  * tGravityAccMag-mean()
  * tGravityAccMag-std()
  * tBodyAccJerkMag-mean()
  * tBodyAccJerkMag-std()
  * tBodyGyroMag-mean()
  * tBodyGyroMag-std()
  * tBodyGyroJerkMag-mean()
  * tBodyGyroJerkMag-std()
  * fBodyAcc-mean()-X
  * fBodyAcc-mean()-Y
  * fBodyAcc-mean()-Z
  * fBodyAcc-std()-X
  * fBodyAcc-std()-Y
  * fBodyAcc-std()-Z
  * fBodyAcc-meanFreq()-X
  * fBodyAcc-meanFreq()-Y
  * fBodyAcc-meanFreq()-Z
  * fBodyAccJerk-mean()-X
  * fBodyAccJerk-mean()-Y
  * fBodyAccJerk-mean()-Z
  * fBodyAccJerk-std()-X
  * fBodyAccJerk-std()-Y
  * fBodyAccJerk-std()-Z
  * fBodyAccJerk-meanFreq()-X
  * fBodyAccJerk-meanFreq()-Y
  * fBodyAccJerk-meanFreq()-Z
  * fBodyGyro-mean()-X
  * fBodyGyro-mean()-Y
  * fBodyGyro-mean()-Z
  * fBodyGyro-std()-X
  * fBodyGyro-std()-Y
  * fBodyGyro-std()-Z
  * fBodyGyro-meanFreq()-X
  * fBodyGyro-meanFreq()-Y
  * fBodyGyro-meanFreq()-Z
  * fBodyAccMag-mean()
  * fBodyAccMag-std()
  * fBodyAccMag-meanFreq()
  * fBodyBodyAccJerkMag-mean()
  * fBodyBodyAccJerkMag-std()
  * fBodyBodyAccJerkMag-meanFreq()
  * fBodyBodyGyroMag-mean()
  * fBodyBodyGyroMag-std()
  * fBodyBodyGyroMag-meanFreq()
  * fBodyBodyGyroJerkMag-mean()
  * fBodyBodyGyroJerkMag-std()
  * fBodyBodyGyroJerkMag-meanFreq()





