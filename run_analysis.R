# You should create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#Set Working Directory
setwd('/Users/juvoni/R-Studio/Getting_and_cleaning_data/UCI HAR Dataset/');

# Load Data Tabel Package
require('data.table')

## STEP 1
# Merges the training and the test sets to create one data set.


# Training DATA
trainingLabels <- read.table('train/y_train.txt', col.names='label')
trainingSubjects <- read.table('train/subject_train.txt', col.names='subject')
trainingData <- read.table('train/X_train.txt')

# TEST DATA
testLabels <- read.table('test/y_test.txt', col.names='label')
testSubjects <- read.table('test/subject_test.txt', col.names='subject')
testData <- read.table('test/X_test.txt')

data <- rbind(cbind(trainingSubjects, trainingLabels, trainingData),cbind(testSubjects, testLabels, testData))

## STEP 2
# Extracts only the measurements on the mean and standard deviation for each measurement.

# Feature Data
features <- read.table('features.txt', strip.white=TRUE, stringsAsFactors=FALSE)

# Filter Mean and Standard Deviation
featuresMeanStd <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

# Select only the mean and standard deviation
# Move index by two past headers
dataMeanStd <- data[, c(1, 2, featuresMeanStd$V1+2)]

## STEP 3
# Uses descriptive activity names to name the activities in the data set

# Read the activity labels
labels <- read.table('activity_labels.txt', stringsAsFactors=FALSE)
# Replace labels in data with label names
dataMeanStd$label <- labels[dataMeanStd$label, 2]

## STEP 4
# Appropriately labels the data set with descriptive variable names.

# first make a list of the current column names and feature names
validColnames <- c('subject', 'label', featuresMeanStd$V2)
# then tidy that list
# by removing every non-alphabetic character and converting to lowercase
validColnames <- tolower(gsub("[^[:alpha:]]", "", validColnames))
# then use the list as column names for data
colnames(dataMeanStd) <- validColnames

## STEP 5
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# find the mean for each combination of subject and label
aggrData <- aggregate(dataMeanStd[, 3:ncol(dataMeanStd)],
                       by=list(subject = dataMeanStd$subject,
                               label = dataMeanStd$label),
                       mean)
## Final Output
write.table(format(aggrData, scientific=T), 'tidydata.txt', row.names=FALSE, col.names=FALSE, quote=2)

