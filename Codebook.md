Data used:
The data sets that were used in this sample were taken from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
After unzipping the contents, the data is as follows
a. Test data inside the test directory.
b. Training data inside the train directory.
X_test.txt,X_train.txt contain the measurements for the observations
y_test.txt,y_train.txt contain the activities performed for each of the observations.
subject_test.txt,subject_train.txt contain the subjects involved in each of the observations.

Data transformations:
Data from X_test.txt,y_test.txt and subject_text.txt were read in using the script as dataframes. They were all combined into a single data set.
Similarly data was combined for all the training data sets.
After that, both the test and training data frames were combined into one single data frame.

An aggregate grouped by activity and subject was performed on the single data frame to find out the means of each of the observed variables.

Explanation of Observations in the tidy dataset.

Variable name: T_Body_Acc_Mean_X
Description: A time domain signal in the X direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Mean_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Mean_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Mean_X
Description: A time domain signal in the X direction to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Mean_X
Description: A time domain signal in the X direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Mean_X
Description: A time domain signal in the X direction to indicate the mean of the body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Mean_X
Description: A time domain signal in the X direction to indicate the mean of the jerking body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Mean_Y
Description: A time domain signal in the Y direction to indicate the mean of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Mean_Z
Description: A time domain signal in the Z direction to indicate the mean of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Std_X
Description: A time domain signal in the X direction to indicate the standard deviation of the jerking body acceleration angular velocity . 
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Std_Y
Description: A time domain signal in the Y direction to indicate the standard deviation of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Std_Z
Description: A time domain signal in the Z direction to indicate the standard deviation of the jerking body acceleration angular velocity .
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Mag_Mean
Description: A time domain signal calculated using the Euclidean norm in to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Mag_Std
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Mag_Mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Gravity_Acc_Mag_Std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the gravity acceleration.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Mag_Mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body cceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Acc_Jerk_Mag_Std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the body acceleration jerk.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Mag_Mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Mag_Std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the body angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Mag_Mean
Description: A time domain signal calculated using the Euclidean norm to indicate the mean of the body jerking angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.

Variable name: T_Body_Gyro_Jerk_Mag_Std
Description: A time domain signal calculated using the Euclidean norm to indicate the standard deviation of the body jerking angular velocity.
Value: Decimal that is the mean of the observations for a subject and activity combination.
