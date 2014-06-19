#Data used
The data sets that were used in this sample were taken from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
After unzipping the contents, the data is in the below directory
a. Test data inside the test directory. X_test.txt, X_train.txt, subject_test.txt contain the measurements for the observations
b. Training data inside the train directory. y_test.txt,y_train.txt, subject_train.txt contain the activities performed for each of the observations.

#Data transformations
Data from X_test.txt,y_test.txt and subject_text.txt were read in using the script as dataframes. They were all combined into a single data set.
Similarly data was combined for all the training data sets.
After that, both the test and training data frames were combined into one single data frame.
An aggregate grouped by activity and subject was performed on the single data frame to find out the means of each of the observed variables.
Every Activity that had values 1 to 6 in the original data set was transformed into corresponding descriptive names like Walking, Wlking Upstairs etc. These descriptive names were taken from activity_labels.txt


#Variables
Explanation of variables in the tidy dataset. All variables are classified into time domain variables beginning with 't' and frequency domain variables beginning with 'f'.

**Variable name:** Activity
**Description:** Descriptive name for the activity performed for the observations.
Allowed values for Activity are Walking, Walking Upstairs, Walking downstairs, Sitting, Standing, Laying.

Variable name: Subject
Description: A number to uniqely identify the subject that partcipated in the experiments.
30 subjects were involved in the experiment and they are numbered from 1 to 30.

Variable name: tBodyAcc_mean_X
Description: A time domain signal in the X direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAcc_mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAcc_mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAcc_std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAcc_std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAcc_std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAcc_mean_X
Description: A time domain signal in the X direction to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAcc_mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAcc_mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAcc_std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAcc_std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAcc_std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerk_mean_X
Description: A time domain signal in the X direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerk_mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerk_mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerk_std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerk_std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerk_std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyro_mean_X
Description: A time domain signal in the X direction to indicate the mean of the body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyro_mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyro_mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyro_std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyro_std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyro_std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerk_mean_X
Description: A time domain signal in the X direction to indicate the mean of the jerking body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerk_mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerk_mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerk_std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the jerking body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerk_std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerk_std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccMag_mean
Description: A time domain signal calculated using the Euclidean norm in to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccMag_std
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAccMag_mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tGravityAccMag_std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerkMag_mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body cceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyAccJerkMag_std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroMag_mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroMag_std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the body angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerkMag_mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body jerking angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: tBodyGyroJerkMag_std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the body jerking angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAcc_mean_X
Description: A frequency domain signal in the X direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAcc_mean_Y
Description: A frequency domain signal in the Y direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAcc_mean_Z
Description: A frequency domain signal in the Z direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAcc_std_X
Description: A frequency domain signal in the X direction to indicate the standard deviation
of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAcc_std_Y
Description: A frequency domain signal in the Y direction to indicate the standard deviation
of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAcc_std_Z
Description: A frequency domain signal in the Z direction to indicate the standard deviation of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerk_mean_X
Description: A frequency domain signal in the X direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerk_mean_Y
Description: A frequency domain signal in the Y direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerk_mean_Z
Description: A frequency domain signal in the Z direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerk_std_X
Description: A frequency domain signal in the X direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerk_std_Y
Description: A frequency domain signal in the Y direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerk_std_Z
Description: A frequency domain signal in the Z direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyro_mean_X
Description: A frequency domain signal in the X direction to indicate the mean of the body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyro_mean_Y
Description: A frequency domain signal in the Y direction to indicate the mean of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyro_mean_Z
Description: A frequency domain signal in the Z direction to indicate the mean of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyro_std_X
Description: A frequency domain signal in the X direction to indicate the standard deviation of the body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyro_std_Y
Description: A frequency domain signal in the Y direction to indicate the standard deviation of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyro_std_Z
Description: A frequency domain signal in the Z direction to indicate the standard deviation of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination. 

Variable name: fBodyAccMag_mean
Description: A frequency domain signal calculated using the Euclidean norm in to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccMag_std
Description: A frequency domain signal calculated using the Euclidean norm to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fGravityAccMag_mean
Description: A frequency domain signal calculated using the Euclidean norm to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fGravityAccMag_std
Description: A frequency domain signal calculated using the Euclidean norm to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerkMag_mean
Description: A frequency domain signal calculated using the Euclidean norm to indicate the mean of the body cceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyAccJerkMag_std
Description: A frequency domain signal calculated using the Euclidean norm to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyroMag_mean
Description: A frequency domain signal calculated using the Euclidean norm to indicate the mean of the body angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyroMag_std
Description: A frequency domain signal calculated using the Euclidean norm to indicate the standard deviation of the body angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyroJerkMag_mean
Description: A frequency domain signal calculated using the Euclidean norm to indicate the mean of the body jerking angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: fBodyGyroJerkMag_std
Description: A frequency domain signal calculated using the Euclidean norm to indicate the standard deviation of the body jerking angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.
