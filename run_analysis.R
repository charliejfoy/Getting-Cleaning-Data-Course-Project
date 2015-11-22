run_analysis <- function(){
     ##library(data.table)
     features <- read.delim(file="./features.txt",header=F,
                            sep=" ")
     TestSubject <- read.delim(file="./subject_test.txt",
                               header=F)
     names(TestSubject)[1] <- "SubjectID"
     TestActivity <- read.delim(file="./y_test.txt", 
                                header=F)
     names(TestActivity)[1] <- "ActivityID"
     TestData <- read.table(file="./X_test.txt",header=F)
     colnames(TestData) <- features$V2
     fullTestData <- cbind(TestSubject,TestActivity,TestData)
     
     TrainSubject <- read.delim(file="./subject_train.txt",
                                header=F)
     names(TrainSubject)[1] <- "SubjectID"
     TrainActivity <- read.delim(file="./y_train.txt", 
                                 header=F)
     names(TrainActivity)[1] <- "ActivityID"
     TrainData <- read.table(file="./X_train.txt",
                             header=F)
     colnames(TrainData) <- features$V2
     fullTrainData <- cbind(TrainSubject,TrainActivity,TrainData)
     
     fullData <- rbind(fullTestData,fullTrainData)
     
#      varMean <- grep("mean\\(\\)",colnames(fullData),value=T)
#      varSTD <- grep("std\\(\\)",colnames(fullData),value=T)
#      cleanData <- fullData[,c("SubjectID","ActivityID",varMean,varSTD)]
     
     
     varMeanSTD <- grepl('mean\\(\\)',colnames(fullData)) | grepl('std\\(\\)',
                    colnames(fullData)) | grepl('SubjectID',colnames(fullData))|
                    grepl('ActivityID',colnames(fullData))
     
     cleanData <- fullData[,varMeanSTD]
     colnames(cleanData) <- gsub("\\(\\)","",colnames(cleanData))
     
     
     activitySet <- read.delim(file="./activity_labels.txt",
                               header=F, sep=" ",
                               col.names = c("ActivityID","ActivityLabel"))
     
     ##activitySet$ActivityLabel <- as.character(activitySet$ActivityLabel)
     
     cleanData <- merge(cleanData,activitySet,by="ActivityID",all.x=T)
     cleanData$ActivityID <- as.character(cleanData$ActivityID)
     cleanData$ActivityID <- cleanData$ActivityLabel
     cleanData$ActivityLabel <- NULL
     
     cdl <- melt(cleanData,id.vars = c("SubjectID","ActivityID"))
     cdld <- dcast(cdl,SubjectID + ActivityID ~ variable,mean)
     
     write.table(cdld,file = "./Assignment Step 5.txt",row.names = F)
     
#      rm(features, fullData,fullTrainData,fullTestData,TestData,TrainData,
#         TestActivity,TrainActivity,varMean,VarSTD,TestSubject,TrainSubject,
#         activitySet)
}