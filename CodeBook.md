Codebook for wearable computing dataset
==================================
## Description

Additional information about the variables, data and transformations used in the course project for the Johns Hopkins Getting and Cleaning Data course.

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip )[Source Data]

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Processed Data

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.
## Variables
````
subject                    1..2
    Subject number
                           1..30 .Unique identifier assigned to each subject

label                      6..18
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"

tbodyaccmeanx              12

tbodyaccmeany              12

tbodyaccmeanz              12

tbodyaccstdx               12

tbodyaccstdy               12

tbodyaccstdz               12

tgravityaccmeanx           12

tgravityaccmeany           12

tgravityaccmeanz           12

tgravityaccstdx            12

tgravityaccstdy            12

tgravityaccstdz            12

tbodyaccjerkmeanx          12

tbodyaccjerkmeany          12

tbodyaccjerkmeanz          12

tbodyaccjerkstdx           12

tbodyaccjerkstdy           12

tbodyaccjerkstdz           12

tbodygyromeanx             12

tbodygyromeany             12

tbodygyromeanz             12

tbodygyrostdx              12

tbodygyrostdy              12

tbodygyrostdz              12

tbodygyrojerkmeanx         12

tbodygyrojerkmeany         12

tbodygyrojerkmeanz         12

tbodygyrojerkstdx          12

tbodygyrojerkstdy          12

tbodygyrojerkstdz          12

tbodyaccmagmean            12

tbodyaccmagstd             12

tgravityaccmagmean         12

tgravityaccmagstd          12

tbodyaccjerkmagmean        12

tbodyaccjerkmagstd         12

tbodygyromagmean           12

tbodygyromagstd            12

tbodygyrojerkmagmean       12

tbodygyrojerkmagstd        12

fbodyaccmeanx              12

fbodyaccmeany              12

fbodyaccmeanz              12

fbodyaccstdx               12

fbodyaccstdy               12

fbodyaccstdz               12

fbodyaccjerkmeanx          12

fbodyaccjerkmeany          12

fbodyaccjerkmeanz          12

fbodyaccjerkstdx           12

fbodyaccjerkstdy           12

fbodyaccjerkstdz           12

fbodygyromeanx             12

fbodygyromeany             12

fbodygyromeanz             12

fbodygyrostdx              12

fbodygyrostdy              12

fbodygyrostdz              12

fbodyaccmagmean            12

fbodyaccmagstd             12

fbodybodyaccjerkmagmean    12

fbodybodyaccjerkmagstd     12

fbodybodygyromagmean       12

fbodybodygyromagstd        12

fbodybodygyrojerkmagmean   12

fbodybodygyrojerkmagstd    12

````
