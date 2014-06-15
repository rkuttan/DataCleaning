readVariables <- function() {
  
  featureList <- read.table("features.txt",sep=" ", 
                            col.names=c("id","Variable"))
  regEx <- "[Mm]ean\\(\\)|std\\(\\)"
  matchIndices <- grep(pattern=regEx,featureList$Variable)
  filterList <- featureList[matchIndices,]
  filterList
  
}

combineObservation <- function(observationtype, variables) {  
  subject <- read.table(paste(observationtype,"/subject_",observationtype,".txt",sep=""),sep=" ",col.names=c("Subject"))    
  observations <- read.table(paste(observationtype,"/X_",observationtype,".txt",sep=""),sep=" ",fill=TRUE,row.names=NULL,header=FALSE, nrows=nrow(subject))                               
  filteredObservation <- observations[,variables$id]
  activity <- read.table(paste(observationtype,"/y_",observationtype,".txt",sep=""),sep="",col.names=c("Activity"))  
  combinedobs<-cbind(filteredObservation,subject,as.factor(activity$Activity))
  colnames(combinedobs) <- c(as.character(variables$Variable),"Subject","Activity")
  levels(combinedobs$Activity)<-c("Walking","Walking Upstairs","Walking downstairs","Sitting","Standing","Laying")
  combinedobs
}

combineBothObservations <- function() {
  filterList<-readVariables()
  testObservations <- combineObservation("test",filterList)
  trainingObservations <- combineObservation("train",filterList)
  combinedallobs<- rbind(testObservations,trainingObservations)
  aggregatedObs <- aggregate(combinedallobs[,1:(ncol(combinedallobs)-2)],by=list(combinedallobs$Activity,combinedallobs$Subject), FUN=mean,na.rm=TRUE)
  colnames(aggregatedObs)<-c("Activity","Subject",as.character(filterList$Variable))
  aggregatedObs
  write.table(aggregatedObs,"tidydata.txt")
}
