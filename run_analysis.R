##########################################
#-Working Directory
#   -data
#       -"UCI HAR Dataset"
#           -train
#           -test
##########################################


##########################################
# Declare the libraries that need to be used
library(reshape2)

##########################################
# Read into R the activity labels and features txt files (source files must be downloaded and unzipped into Data folder within the working directory)
activity_labels <- read.table(file="./data/UCI HAR Dataset/activity_labels.txt", header = FALSE, col.names=c("labelindex","labelname"))
features_columns <- read.table(file="./data/UCI HAR Dataset/features.txt", header = FALSE)

##########################################
# Identify which columns to be extracted from full dataset. Use grep to search for feature names with "mean" OR "std"
feature_columns_extract <- grep("mean|std", features_columns[,2])

##########################################
# Read into R the files in test subfolder - Subject, Y(label), X(data). Used variables with prefix "test_"
test_subject <- read.table(file="./data/UCI HAR Dataset/test/subject_test.txt", header = FALSE, col.names="subject")
test_Y <- read.table(file="./data/UCI HAR Dataset/test/Y_test.txt", header = FALSE, col.names="labelindex")

##########################################
# ITEM 4: Appropriately labels the data set with descriptive variable names
test_X <- read.table(file="./data/UCI HAR Dataset/test/X_test.txt", header = FALSE, col.names = features_columns[,2], check.names=FALSE)

##########################################
# ITEM 2: Extracts only the measurements on the mean and standard deviation for each measurement (mean, std)
test_X <- test_X[,feature_columns_extract]

##########################################
# Column bind Subject, Y, X. use nrow() to verify that number of rows are the same
test_data = cbind(test_Y, test_subject, test_X)

##########################################
# Read into R the files in train subfolder - Subject, Y(label), X(data). Used variables with prefix "train_"
train_subject <- read.table(file="./data/UCI HAR Dataset/train/subject_train.txt", header = FALSE, col.names="subject")
train_Y <- read.table(file="./data/UCI HAR Dataset/train/Y_train.txt", header = FALSE, col.names="labelindex")

##########################################
# ITEM 4: Appropriately labels the data set with descriptive variable names
train_X <- read.table(file="./data/UCI HAR Dataset/train/X_train.txt", header = FALSE, col.names = features_columns[,2], check.names=FALSE)

##########################################
# ITEM 2: Extracts only the measurements on the mean and standard deviation for each measurement (mean, std)
train_X <- train_X[,feature_columns_extract]

##########################################
# Column bind Subject, Y, X. use nrow() to verify that number of rows are the same
train_data = cbind(train_Y, train_subject, train_X)

##########################################
# ITEM 1: Merges the training and the test sets to create one data set. use ncol() to verify that number of columns are the same
testtrain_data <- rbind(test_data, train_data)

##########################################
# ITEM 3: Uses descriptive activity names to name the activities in the data set
testtrain_data = merge(activity_labels, testtrain_data, by.x="labelindex", by.y="labelindex") 

##########################################
# remove first column so that the testtrain dataframe removes labelindex and only displays labelnames
testtrain_data <- testtrain_data[,-1]

##########################################
# ITEM 5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# Melt the testtrain dataframe using labelname and subject
testtrainMelt <- melt(testtrain_data, id = c("labelname", "subject"))

##########################################
# Create a tidy dataframe using molten testtrainMelt dataframe using mean aggregate function
labelsubjectTidyData <- dcast(testtrainMelt, labelname + subject ~ variable, mean)

##########################################
# Write tidy dataframe to file "HAR_testtrain_labelnamesubject_means.txt"
write.table(labelsubjectTidyData, file="HAR_testtrain_labelnamesubject_means.txt", quote=FALSE, row.names=FALSE, sep="\t")

##########################################
# Write variables used to "CodeBook_listofvariables.md"
write.table(paste("* ", names(labelsubjectTidyData), sep=""), file="CodeBook_listofvariables.md", quote=FALSE, row.names=FALSE, col.names=FALSE, sep="\t")

