# Read the measurement names from the feattures.txt file
readVariables <- function() {  
  featureList<-read.table("features.txt",sep=" ", 
                          col.names=c("id","Variable"))  
  featureList
}

#Use a regular expression to filter variable names by mean() and std()
filterVariables <- function(featureList){
  regEx <- "[Mm]ean\\(\\)|std\\(\\)"
  matchIndices <- grep(pattern=regEx,featureList$Variable)
  #filterList <- featureList[matchIndices,]
  #filterList
  featureList[matchIndices,]
}

#Combine the observation for an observationtype i.e. test or train
#Read the test/training data into a data frame, the subjects and the activities.
#Combine all these into a single data frame.
combineObservation <- function(observationtype, measurement) {  
  
  #Read all the subjects for each observation
  subject <- read.table(paste(observationtype,"/subject_",observationtype,".txt",sep=""),sep=" ",col.names=c("Subject"))    
  
  #Read the actual measurements and filter out only the mean() and std() measurements.
  observations <- read.table(paste(observationtype,"/X_",observationtype,".txt",sep=""),header=FALSE, col.names=measurement$Variable)                               
  filteredObservation <- filterVariables(measurement)
  observations <- observations[,filteredObservation$Variable]
  
  #Read all the activities for each observation
  activity <- read.table(paste(observationtype,"/y_",observationtype,".txt",sep=""),sep="",col.names=c("Activity"))  
  
  #Combine observations, subject and activity. Store activities as factors.
  combinedobs<-cbind(observations,subject,as.factor(activity$Activity))
  colnames(combinedobs) <- c(as.character(filteredObservation$Variable),"Subject","Activity")
  
  #Rename the levels of the activities to descriptive names as indicated in activity_labels.txt
  levels(combinedobs$Activity)<-c("Walking","Walking Upstairs","Walking downstairs","Sitting","Standing","Laying")
  combinedobs
}

#Combines observations from the test and training into a single data frame
# and aggregates it by activity and subject
combineBothObservations <- function() {
  #Read all the measurements
  featureList<-readVariables()
  
  #Read the test and training observations
  testObservations <- combineObservation("test",featureList)
  trainingObservations <- combineObservation("train",featureList)
  
  #Combine both results
  combinedallobs<- rbind(testObservations,trainingObservations)  
  combinedallobs
  
  #Calculate the mean grouping by activity and subject
  aggregatedObs <- aggregate(combinedallobs[,1:(ncol(combinedallobs)-2)],by=list(combinedallobs$Activity,combinedallobs$Subject), FUN=mean,na.rm=TRUE)
  filterList<-filterVariables(featureList)
  
  #Remove the character () and replace - with _
  measurements <- as.character(filterList$Variable)
  measurements <- gsub("\\(\\)","",measurements)
  measurements <- gsub("-","_",measurements)
  colnames(aggregatedObs)<-c("Activity","Subject",measurements)  
  
  #Write the tidy data set to a txt file.
  write.table(aggregatedObs,"tidydata.txt",sep=" ",row.names=FALSE)
}
