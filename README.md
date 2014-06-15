Below are the details of each function.

1. readVariables() - This function reads the variables defined in the features.txt file as a 
dataframe. We are interested in only variables that are the mean or standard deviation. A regular 
expression matching the text mean and standard deviation is used to subset the values from the 
dataframe. Every variable is accompanied by an index number that reprsents the position of the 
variable in the test and training data set. The subsetted dataframe contains only variables and
corresponding indices that are mean or standar deviations.

2. combineObservation() - This function takes 2 parameters, i.e. observationType having values 
'train' or 'test' and a filter list of variable names.
This function does the following
a. Reads the data from files using read.table
b. Reads the subjects, activity and the raw data from the test or training directories.
c. The result obtained from the raw data from test and train directories are filtered to extract 
only those columns from the filterlist. 
c. Combines the data read from the 3 files into a single dataframe. This is achieved using cbind

3. combineBothObservations() - This function does the following
a. Calls readVariables function and stores a list of filtered variable names
b. Calls combineObservation twice by passing parameters test and train as observationtype in each 
call.
c. The 2 dataframes obtained from the results of combineObservation are combined using rbind.
d. Using the aggregate function, an mean grouped by each subject and activity are obtained for all 
the filtered variables.

The result obtained above is a tiday data set that contains 180 observations for all variables. Each 
observation represents the mean of a subject and all activities for all the variables.
