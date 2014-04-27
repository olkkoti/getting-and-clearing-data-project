# CodeBook for tidy Samsung dataset

## Data set information

This data set summaries the Human Activity Recognition Using Smartphones data set, which can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The tidy data set contains data from both test and train data from the original data set.

The tidy data set has one row per activity and subject. The variables are mean values of original variables per activity and subject. From the original variables, only mean() and std() ones are used in creating this data set.

The variable names have been simplified: hyphens and parentheses have been removed, and the names are in camelCase.

## Variables

### activityNumber

Number of the summaried activity.

### activityName

Name of the activity summaried.

### subject

Number of the subject whose activity is summaried.

## Variables from the original data set

These are all mean values of the original data set. The variables are

* tBodyAccMeanX
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccStdX            
* tBodyAccStdY
* tBodyAccStdZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccStdX
* tGravityAccStdY
* tGravityAccStdZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkStdX
* tBodyAccJerkStdY
* tBodyAccJerkStdZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroStdX
* tBodyGyroStdY
* tBodyGyroStdZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkStdX
* tBodyGyroJerkStdY
* tBodyGyroJerkStdZ
* tBodyAccMagMean
* tBodyAccMagStd
* tGravityAccMagMean
* tGravityAccMagStd
* tBodyAccJerkMagMean
* tBodyAccJerkMagStd
* tBodyGyroMagMean
* tBodyGyroMagStd
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagStd
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccStdX
* fBodyAccStdY
* fBodyAccStdZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY
* fBodyAccJerkMeanZ
* fBodyAccJerkStdX
* fBodyAccJerkStdY
* fBodyAccJerkStdZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroStdX
* fBodyGyroStdY
* fBodyGyroStdZ
* fBodyAccMagMean
* fBodyAccMagStd
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagStd
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagStd
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagStd