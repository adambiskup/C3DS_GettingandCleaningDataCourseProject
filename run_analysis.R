## Author : Adam Biskup

## Declaration of imports
library(dplyr)

## Downloading data sets
zipUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFile <- "UCI HAR Dataset.zip"

if (!file.exists(zipFile)) {  download.file(zipUrl, zipFile, mode = "wb") }


## unzipping zip file containing data if data directory doesn't already exist
dataPath <- "UCI HAR Dataset"
if (!file.exists(dataPath)) {
  unzip(zipFile)
}

## Reading data
### reading of training data
trainingSubjects <- read.table(file.path(dataPath, "train", "subject_train.txt"))
# 7352 obs X 1 column - subjects labeled by int value
trainingValues   <- read.table(file.path(dataPath, "train", "X_train.txt"))
# 7352 obs X 561 columns
trainingActivity <- read.table(file.path(dataPath, "train", "y_train.txt"))
# 7352 obs X 1 column - activity labeled by int value - from 1 to 6

### reading of  test data - group of 2947 observations
testSubjects <- read.table(file.path(dataPath, "test", "subject_test.txt"))
testValues   <- read.table(file.path(dataPath, "test", "X_test.txt"))
testActivity <- read.table(file.path(dataPath, "test", "y_test.txt"))

## reading of features, don't convert text labels to factors
features <- read.table(file.path(dataPath, "features.txt"), as.is = TRUE)
# 561 rows x 2 columns (id , description of 561 columns of datatables above)

## reading of activity labels
activities <- read.table(file.path(dataPath, "activity_labels.txt"))
# 6 rows x 2 columns (id_activity, desscription of activity )
colnames(activities) <- c("activityId", "activityLabel")

## Task 1. Merges the training and the test sets to create one data set.
testData    <- cbind(trainingSubjects, trainingValues, trainingActivity)
trainData   <- cbind(testSubjects, testValues, testActivity)
humActivity <- rbind( testData , trainData )

# Assigning of column names
colnames(humActivity) <- c("subject", features[, 2], "activity")

## Task 2. Extracts only the measurements on the mean and standard deviation for each measurement.
columnsToExtract <- grepl("subject|activity|mean|std", colnames(humActivity))

# Filtering out data without recreating object - saving computer memory
humActivity <- humActivity[, columnsToExtract]

## Task 3. Uses descriptive activity names to name the activities in the data set
# Replacement numerical codes of activities with its names - WALKING, STANDING
humActivity$activity <- factor(humActivity$activity, 
                          levels = activities[, 1], labels = activities[, 2])

## Task 4. Appropriately labels the data set with descriptive variable names. 
# get column names
humActivityCols <- colnames(humActivity)
  
# remove special characters like "(" , ")" , "-" , 
humActivityCols <- gsub("[\\(\\)-]", "", humActivityCols)
  
# Expansion of abbreviations
humActivityCols <- gsub("^f", "frequencyDomain" ,    humActivityCols)
humActivityCols <- gsub("^t", "timeDomain" ,         humActivityCols)

humActivityCols <- gsub("Acc", "Accelerometer" ,     humActivityCols)
humActivityCols <- gsub("Freq", "Frequency",         humActivityCols)
humActivityCols <- gsub("Gyro", "Gyroscope",         humActivityCols)
humActivityCols <- gsub("Mag", "Magnitude",          humActivityCols)

humActivityCols <- gsub("mean", "Mean",              humActivityCols)
humActivityCols <- gsub("std", "StandardDeviation",  humActivityCols)
  
humActivityCols <- gsub("BodyBody", "Body",          humActivityCols)
  
# Renaming columns names with improved set
colnames(humActivity) <- humActivityCols
  
# 5. Task From the data set in step 4, creates a second, independent tidy data set
#  with the average of each variable for each activity and each subject.
humActivityMeans <- humActivity %>% 
                    group_by( subject , activity ) %>%
                    summarise_all( funs(mean) )

#  Final output to file
write.table( humActivityMeans, "UCI_HAR_tidied_version.txt", row.names = FALSE,
              quote = FALSE)

# End of script  


