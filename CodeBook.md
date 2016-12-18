Input data from [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) is assumed to have been extracted into the current working directory (i.e. data files are under `./UCI HAR Dataset/`).
Output data is written to `./output/feature-means.txt`.

The following transformations are performed:

 * `train` and `test` data sets are merged, including observation values from `X_*.txt`, `y_*.txt`, and `subject_*.txt`
 * only features with names including `-mean()` or `-std()` are retained
 * data is converted into long format with activity and subject as ids
 * for each combination of activity and subject, feature values are averaged and only the mean is retained

The columns in the output file are as follows:

column   | description
---------|----------------------------------------------------------------------------------
activity | activity label (using the text values from `UCI HAR Dataset/activity_labels.txt`)
subject  | subject id (1 to 30)
feature  | feature identifier (using the text values from `UCI HAR Dataset/features.txt`)
mean     | mean of the feature values for the current activity and subject

Specifically, the output contains the following features:

`feature`                      | value of `mean`
-------------------------------|------------------------------------
`tBodyAcc-mean()-X`            | arithmetic mean of observations for `tBodyAcc-mean()-X` for the given activity and subject
`tBodyAcc-mean()-Y`            | arithmetic mean of observations for `tBodyAcc-mean()-Y` for the given activity and subject
`tBodyAcc-mean()-Z`            | arithmetic mean of observations for `tBodyAcc-mean()-Z` for the given activity and subject
`tBodyAcc-std()-X`             | arithmetic mean of observations for `tBodyAcc-std()-X` for the given activity and subject
`tBodyAcc-std()-Y`             | arithmetic mean of observations for `tBodyAcc-std()-Y` for the given activity and subject
`tBodyAcc-std()-Z`             | arithmetic mean of observations for `tBodyAcc-std()-Z` for the given activity and subject
`tGravityAcc-mean()-X`         | arithmetic mean of observations for `tGravityAcc-mean()-X` for the given activity and subject
`tGravityAcc-mean()-Y`         | arithmetic mean of observations for `tGravityAcc-mean()-Y` for the given activity and subject
`tGravityAcc-mean()-Z`         | arithmetic mean of observations for `tGravityAcc-mean()-Z` for the given activity and subject
`tGravityAcc-std()-X`          | arithmetic mean of observations for `tGravityAcc-std()-X` for the given activity and subject
`tGravityAcc-std()-Y`          | arithmetic mean of observations for `tGravityAcc-std()-Y` for the given activity and subject
`tGravityAcc-std()-Z`          | arithmetic mean of observations for `tGravityAcc-std()-Z` for the given activity and subject
`tBodyAccJerk-mean()-X`        | arithmetic mean of observations for `tBodyAccJerk-mean()-X` for the given activity and subject
`tBodyAccJerk-mean()-Y`        | arithmetic mean of observations for `tBodyAccJerk-mean()-Y` for the given activity and subject
`tBodyAccJerk-mean()-Z`        | arithmetic mean of observations for `tBodyAccJerk-mean()-Z` for the given activity and subject
`tBodyAccJerk-std()-X`         | arithmetic mean of observations for `tBodyAccJerk-std()-X` for the given activity and subject
`tBodyAccJerk-std()-Y`         | arithmetic mean of observations for `tBodyAccJerk-std()-Y` for the given activity and subject
`tBodyAccJerk-std()-Z`         | arithmetic mean of observations for `tBodyAccJerk-std()-Z` for the given activity and subject
`tBodyGyro-mean()-X`           | arithmetic mean of observations for `tBodyGyro-mean()-X` for the given activity and subject
`tBodyGyro-mean()-Y`           | arithmetic mean of observations for `tBodyGyro-mean()-Y` for the given activity and subject
`tBodyGyro-mean()-Z`           | arithmetic mean of observations for `tBodyGyro-mean()-Z` for the given activity and subject
`tBodyGyro-std()-X`            | arithmetic mean of observations for `tBodyGyro-std()-X` for the given activity and subject
`tBodyGyro-std()-Y`            | arithmetic mean of observations for `tBodyGyro-std()-Y` for the given activity and subject
`tBodyGyro-std()-Z`            | arithmetic mean of observations for `tBodyGyro-std()-Z` for the given activity and subject
`tBodyGyroJerk-mean()-X`       | arithmetic mean of observations for `tBodyGyroJerk-mean()-X` for the given activity and subject
`tBodyGyroJerk-mean()-Y`       | arithmetic mean of observations for `tBodyGyroJerk-mean()-Y` for the given activity and subject
`tBodyGyroJerk-mean()-Z`       | arithmetic mean of observations for `tBodyGyroJerk-mean()-Z` for the given activity and subject
`tBodyGyroJerk-std()-X`        | arithmetic mean of observations for `tBodyGyroJerk-std()-X` for the given activity and subject
`tBodyGyroJerk-std()-Y`        | arithmetic mean of observations for `tBodyGyroJerk-std()-Y` for the given activity and subject
`tBodyGyroJerk-std()-Z`        | arithmetic mean of observations for `tBodyGyroJerk-std()-Z` for the given activity and subject
`tBodyAccMag-mean()`           | arithmetic mean of observations for `tBodyAccMag-mean()` for the given activity and subject
`tBodyAccMag-std()`            | arithmetic mean of observations for `tBodyAccMag-std()` for the given activity and subject
`tGravityAccMag-mean()`        | arithmetic mean of observations for `tGravityAccMag-mean()` for the given activity and subject
`tGravityAccMag-std()`         | arithmetic mean of observations for `tGravityAccMag-std()` for the given activity and subject
`tBodyAccJerkMag-mean()`       | arithmetic mean of observations for `tBodyAccJerkMag-mean()` for the given activity and subject
`tBodyAccJerkMag-std()`        | arithmetic mean of observations for `tBodyAccJerkMag-std()` for the given activity and subject
`tBodyGyroMag-mean()`          | arithmetic mean of observations for `tBodyGyroMag-mean()` for the given activity and subject
`tBodyGyroMag-std()`           | arithmetic mean of observations for `tBodyGyroMag-std()` for the given activity and subject
`tBodyGyroJerkMag-mean()`      | arithmetic mean of observations for `tBodyGyroJerkMag-mean()` for the given activity and subject
`tBodyGyroJerkMag-std()`       | arithmetic mean of observations for `tBodyGyroJerkMag-std()` for the given activity and subject
`fBodyAcc-mean()-X`            | arithmetic mean of observations for `fBodyAcc-mean()-X` for the given activity and subject
`fBodyAcc-mean()-Y`            | arithmetic mean of observations for `fBodyAcc-mean()-Y` for the given activity and subject
`fBodyAcc-mean()-Z`            | arithmetic mean of observations for `fBodyAcc-mean()-Z` for the given activity and subject
`fBodyAcc-std()-X`             | arithmetic mean of observations for `fBodyAcc-std()-X` for the given activity and subject
`fBodyAcc-std()-Y`             | arithmetic mean of observations for `fBodyAcc-std()-Y` for the given activity and subject
`fBodyAcc-std()-Z`             | arithmetic mean of observations for `fBodyAcc-std()-Z` for the given activity and subject
`fBodyAccJerk-mean()-X`        | arithmetic mean of observations for `fBodyAccJerk-mean()-X` for the given activity and subject
`fBodyAccJerk-mean()-Y`        | arithmetic mean of observations for `fBodyAccJerk-mean()-Y` for the given activity and subject
`fBodyAccJerk-mean()-Z`        | arithmetic mean of observations for `fBodyAccJerk-mean()-Z` for the given activity and subject
`fBodyAccJerk-std()-X`         | arithmetic mean of observations for `fBodyAccJerk-std()-X` for the given activity and subject
`fBodyAccJerk-std()-Y`         | arithmetic mean of observations for `fBodyAccJerk-std()-Y` for the given activity and subject
`fBodyAccJerk-std()-Z`         | arithmetic mean of observations for `fBodyAccJerk-std()-Z` for the given activity and subject
`fBodyGyro-mean()-X`           | arithmetic mean of observations for `fBodyGyro-mean()-X` for the given activity and subject
`fBodyGyro-mean()-Y`           | arithmetic mean of observations for `fBodyGyro-mean()-Y` for the given activity and subject
`fBodyGyro-mean()-Z`           | arithmetic mean of observations for `fBodyGyro-mean()-Z` for the given activity and subject
`fBodyGyro-std()-X`            | arithmetic mean of observations for `fBodyGyro-std()-X` for the given activity and subject
`fBodyGyro-std()-Y`            | arithmetic mean of observations for `fBodyGyro-std()-Y` for the given activity and subject
`fBodyGyro-std()-Z`            | arithmetic mean of observations for `fBodyGyro-std()-Z` for the given activity and subject
`fBodyAccMag-mean()`           | arithmetic mean of observations for `fBodyAccMag-mean()` for the given activity and subject
`fBodyAccMag-std()`            | arithmetic mean of observations for `fBodyAccMag-std()` for the given activity and subject
`fBodyBodyAccJerkMag-mean()`   | arithmetic mean of observations for `fBodyBodyAccJerkMag-mean()` for the given activity and subject
`fBodyBodyAccJerkMag-std()`    | arithmetic mean of observations for `fBodyBodyAccJerkMag-std()` for the given activity and subject
`fBodyBodyGyroMag-mean()`      | arithmetic mean of observations for `fBodyBodyGyroMag-mean()` for the given activity and subject
`fBodyBodyGyroMag-std()`       | arithmetic mean of observations for `fBodyBodyGyroMag-std()` for the given activity and subject
`fBodyBodyGyroJerkMag-mean()`  | arithmetic mean of observations for `fBodyBodyGyroJerkMag-mean()` for the given activity and subject
`fBodyBodyGyroJerkMag-std()`   | arithmetic mean of observations for `fBodyBodyGyroJerkMag-std()` for the given activity and subject

Refer to the input data set documentation for detailed description of features and activity values.
