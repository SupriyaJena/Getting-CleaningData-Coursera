# Getting and Cleaning Data course project code book  

## Data sets

### Input data sets

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

### Raw data set

The raw data set is created by 

        - filtering the variables that contains -mean( or -std( in their names
        - then combining the filtered data from training and testing data sets

Totally, the raw data set contains 68 variables:

        - subject - An identifier of the subject who carried out the experiment.
        - label - An activity label.

These signals were used to estimate variables of the feature vector for each pattern:  
-XYZ is used to denote 3-axial signals in the X, Y and Z directions.

        - tBodyAcc-XYZ
        - tGravityAcc-XYZ
        - tBodyAccJerk-XYZ
        - tBodyGyro-XYZ
        - tBodyGyroJerk-XYZ
        - tBodyAccMag
        - tGravityAccMag
        - tBodyAccJerkMag
        - tBodyGyroMag
        - tBodyGyroJerkMag
        - fBodyAcc-XYZ
        - fBodyAccJerk-XYZ
        - fBodyGyro-XYZ
        - fBodyAccMag
        - fBodyAccJerkMag
        - fBodyGyroMag
        - fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
 * `mean()`: Mean value
 * `std()`: Standard deviation

### Tidy data set

Tidy data set contains the same variables as the raw does, but the variables
were renamed according to following rules:

To satisfy the requirements above, the following replacements were performed:
 1. Replace -mean with Mean
 1. Replace -std with Std
 1. Remove characters -()
 1. Replace BodyBody with Body

### Variables in raw and tidy data set

 Raw data set | Tidy data set
 -------------|--------------
 `subject` | `subject`
 `label` | `label`
 `tBodyAcc-mean()-X` | `tBodyAccMeanX`
 `tBodyAcc-mean()-Y` | `tBodyAccMeanY`
 `tBodyAcc-mean()-Z` | `tBodyAccMeanZ`
 `tBodyAcc-std()-X` | `tBodyAccStdX`
 `tBodyAcc-std()-Y` | `tBodyAccStdY`
 `tBodyAcc-std()-Z` | `tBodyAccStdZ`
 `tGravityAcc-mean()-X` | `tGravityAccMeanX`
 `tGravityAcc-mean()-Y` | `tGravityAccMeanY`
 `tGravityAcc-mean()-Z` | `tGravityAccMeanZ`
 `tGravityAcc-std()-X` | `tGravityAccStdX`
 `tGravityAcc-std()-Y` | `tGravityAccStdY`
 `tGravityAcc-std()-Z` | `tGravityAccStdZ`
 `tBodyAccJerk-mean()-X` | `tBodyAccJerkMeanX`
 `tBodyAccJerk-mean()-Y` | `tBodyAccJerkMeanY`
 `tBodyAccJerk-mean()-Z` | `tBodyAccJerkMeanZ`
 `tBodyAccJerk-std()-X` | `tBodyAccJerkStdX`
 `tBodyAccJerk-std()-Y` | `tBodyAccJerkStdY`
 `tBodyAccJerk-std()-Z` | `tBodyAccJerkStdZ`
 `tBodyGyro-mean()-X` | `tBodyGyroMeanX`
 `tBodyGyro-mean()-Y` | `tBodyGyroMeanY`
 `tBodyGyro-mean()-Z` | `tBodyGyroMeanZ`
 `tBodyGyro-std()-X` | `tBodyGyroStdX`
 `tBodyGyro-std()-Y` | `tBodyGyroStdY`
 `tBodyGyro-std()-Z` | `tBodyGyroStdZ`
 `tBodyGyroJerk-mean()-X` | `tBodyGyroJerkMeanX`
 `tBodyGyroJerk-mean()-Y` | `tBodyGyroJerkMeanY`
 `tBodyGyroJerk-mean()-Z` | `tBodyGyroJerkMeanZ`
 `tBodyGyroJerk-std()-X` | `tBodyGyroJerkStdX`
 `tBodyGyroJerk-std()-Y` | `tBodyGyroJerkStdY`
 `tBodyGyroJerk-std()-Z` | `tBodyGyroJerkStdZ`
 `tBodyAccMag-mean()` | `tBodyAccMagMean`
 `tBodyAccMag-std()` | `tBodyAccMagStd`
 `tGravityAccMag-mean()` | `tGravityAccMagMean`
 `tGravityAccMag-std()` | `tGravityAccMagStd`
 `tBodyAccJerkMag-mean()` | `tBodyAccJerkMagMean`
 `tBodyAccJerkMag-std()` | `tBodyAccJerkMagStd`
 `tBodyGyroMag-mean()` | `tBodyGyroMagMean`
 `tBodyGyroMag-std()` | `tBodyGyroMagStd`
 `tBodyGyroJerkMag-mean()` | `tBodyGyroJerkMagMean`
 `tBodyGyroJerkMag-std()` | `tBodyGyroJerkMagStd`
 `fBodyAcc-mean()-X` | `fBodyAccMeanX`
 `fBodyAcc-mean()-Y` | `fBodyAccMeanY`
 `fBodyAcc-mean()-Z` | `fBodyAccMeanZ`
 `fBodyAcc-std()-X` | `fBodyAccStdX`
 `fBodyAcc-std()-Y` | `fBodyAccStdY`
 `fBodyAcc-std()-Z` | `fBodyAccStdZ`
 `fBodyAccJerk-mean()-X` | `fBodyAccJerkMeanX`
 `fBodyAccJerk-mean()-Y` | `fBodyAccJerkMeanY`
 `fBodyAccJerk-mean()-Z` | `fBodyAccJerkMeanZ`
 `fBodyAccJerk-std()-X` | `fBodyAccJerkStdX`
 `fBodyAccJerk-std()-Y` | `fBodyAccJerkStdY`
 `fBodyAccJerk-std()-Z` | `fBodyAccJerkStdZ`
 `fBodyGyro-mean()-X` | `fBodyGyroMeanX`
 `fBodyGyro-mean()-Y` | `fBodyGyroMeanY`
 `fBodyGyro-mean()-Z` | `fBodyGyroMeanZ`
 `fBodyGyro-std()-X` | `fBodyGyroStdX`
 `fBodyGyro-std()-Y` | `fBodyGyroStdY`
 `fBodyGyro-std()-Z` | `fBodyGyroStdZ`
 `fBodyAccMag-mean()` | `fBodyAccMagMean`
 `fBodyAccMag-std()` | `fBodyAccMagStd`
 `fBodyBodyAccJerkMag-mean()` | `fBodyAccJerkMagMean`
 `fBodyBodyAccJerkMag-std()` | `fBodyAccJerkMagStd`
 `fBodyBodyGyroMag-mean()` | `fBodyGyroMagMean`
 `fBodyBodyGyroMag-std()` | `fBodyGyroMagStd`
 `fBodyBodyGyroJerkMag-mean()` | `fBodyGyroJerkMagMean`
 `fBodyBodyGyroJerkMag-std()` | `fBodyGyroJerkMagStd`