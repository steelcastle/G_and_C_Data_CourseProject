##############################
## Perform preparatory work ##
##############################
##
## 
##
## Proceed on the basis that raw files are already present in the working 
## directory.
## 
## Read in training and test observation datasets and combine into
## one complete dataset
##
trainingObs_Dataset<-read.table("UCI HAR Dataset/train/X_train.txt")
testObs_Dataset<-read.table("UCI HAR Dataset/test/X_test.txt")
completeObs_Dataset<-rbind(trainingObs_Dataset,testObs_Dataset)

##
## Read in training and test labels datasets
##
trainLabels<-read.table("UCI HAR Dataset/train/y_train.txt",stringsAsFactors=FALSE)
testLabels<-read.table("UCI HAR Dataset/test/y_test.txt",stringsAsFactors=FALSE)

##
## Read in activity labels data
##
activityLabels<-read.table("UCI HAR Dataset/activity_labels.txt",stringsAsFactors=FALSE)

## 
## Replace activity label values with proper activity names, combine the
## two dataframes into one and rename column appropriately
##
trainLabels$V1<-activityLabels[trainLabels$V1,"V2"]
testLabels$V1<-activityLabels[testLabels$V1,"V2"]
observationActivityNames<-rbind(trainLabels,testLabels)
names(observationActivityNames)<-"Activity"

##
## Read in data sets identifying the subjects for both training and test
## runs. Combine into one dataset and rename column appropriately
##
trainSubjectIds<-read.table("UCI HAR Dataset/train/subject_train.txt")
testSubjectIds<-read.table("UCI HAR Dataset/test/subject_test.txt")
observationSubjectIds<-rbind(trainSubjectIds,testSubjectIds)
names(observationSubjectIds)<-"Subject"

##
## Read in feature names dataset then select only the mean and 
## std dev features,modify slightly to more human-readable form
##
features<-read.table("UCI HAR Dataset/features.txt",stringsAsFactors=FALSE)
featuresFiltered<-filter(features,grepl("mean\\(\\)|std",features$V2))
##meanIndices <- features[grepl("mean()",features$V2) & !grepl("meanFreq()",features$V2),1]
##stdIndices <- features[grep("std()",features$V2),1]
##featuresFiltered<-features[c(meanIndices,stdIndices),2]
featuresFiltered[,2]<-sub("BodyBody","Body",featuresFiltered[,2])
featuresFiltered[,2]<-sub("-mean","Mean",featuresFiltered[,2])
featuresFiltered[,2]<-sub("-std","StdDev",featuresFiltered[,2])
featuresFiltered[,2]<-sub("\\(\\)","",featuresFiltered[,2])

##
## Select  corresponding columns from the complete observation
## dataset using the filtered feature name row indices
##
finalObs_Dataset<-select(completeObs_Dataset,featuresFiltered[seq_along(featuresFiltered$V1),"V1"])
##
## Prefix filtered feature names with "MeanOf_" to indicate the values
## being represented in the tidy data output file. Apply these names to our current dataset
##
featuresFiltered[,2]<-sub("^","MeanOf_",featuresFiltered[,2])
names(finalObs_Dataset)<-featuresFiltered[,2]

##
## Column bind activity and subject ids to observation dataset
##
finalObs_Dataset<-cbind(observationActivityNames,observationSubjectIds,finalObs_Dataset)

##
## Group dataset by activity and subject id. Then
## calculate the mean values of the grouped observations for
## each variable except of course the Activity and Subject columns
##
finalObs_Dataset<-group_by(finalObs_Dataset,Activity,Subject)
finalObs_Dataset<-summarise_each(finalObs_Dataset,funs(mean),-(Activity:Subject))

##
## Write the final tidy data set to a text file
##
write.table(finalObs_Dataset,file="tidydata.txt",row.names=FALSE)

## EOF