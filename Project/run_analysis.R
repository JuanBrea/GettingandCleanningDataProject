
run_analysis<-function(){
#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING
actlab<-list("WALKING"=1,"WALKING_UPSTAIRS"=2,"WALKING_DOWNSTAIRS"=3, "SITTING"=4,"STANDING"=5,"LAYING"=6 )
actlabs<-list("1"="WALKING","2"="WALKING_UPSTAIRS","3"="WALKING_DOWNSTAIRS", "4"="SITTING","5"="STANDING","6"="LAYING" )

path<-paste(".//UCI HAR Dataset",sep="")
trainPath<-"//train"
testPath<-"//test"
Inertialpath<-"//Inertial Signals"
#Common
featuresf<-paste(path,"//features.txt",sep="")
feat<-read.table(featuresf)
activityLabf<-paste(path,"//activity_labels.txt",sep="")
activityLab<-read.table(activityLabf)


#Train Data
#Files
y_trainf<-paste(path,trainPath,"//y_train.txt",sep="")
X_trainf<-paste(path,trainPath,"//X_train.txt",sep="")
sub_trainf<-paste(path,trainPath,"//subject_train.txt", sep="")


#Get Train Data
dt<-read.table(sub_trainf)
names(dt)<-"Volunteer_Id"
trainData<-dt

dt<-read.table(y_trainf)
names(dt)<-"Activity"
trainData<-cbind(trainData,dt)

#label it from train set
dt<-as.data.frame(rep("TRAIN",dim(trainData)[1]))
names(dt)<-"UsedIn"
trainData<-cbind(trainData,dt)


bigTrainData<-read.table(X_trainf)
names(bigTrainData)<-feat[,2]


#Test Data
#Files
y_testf<-paste(path,testPath,"//y_test.txt",sep="")
X_testf<-paste(path,testPath,"//X_test.txt",sep="")
sub_testf<-paste(path,testPath,"//subject_test.txt", sep="")



#Get Test Data
dt<-read.table(sub_testf)
names(dt)<-"Volunteer_Id"
testData<-dt
dt<-read.table(y_testf)
names(dt)<-"Activity"
testData<-cbind(testData,dt)
#Label it from TEST
dt<-as.data.frame(rep("TEST",dim(testData)[1]))
names(dt)<-"UsedIn"
testData<-cbind(testData,dt)

bigTestData<-read.table(X_testf)
names(bigTestData)<-feat[,2]

#Combine test and train datasets

theData<-rbind(testData, trainData)

bigData<-rbind(bigTestData,bigTrainData)
#names(bigData[grep("mean",names(bigData),fixed=TRUE)] )

meanStdData<-bigData[,names(bigData[grep("mean",names(bigData),fixed=TRUE)] )]
meanStdData<-cbind(meanStdData,bigData[,names(bigData[grep("std",names(bigData),fixed=TRUE)] )])

bigData<-cbind(theData,meanStdData)

#1 WALKING
#2 WALKING_UPSTAIRS
#3 WALKING_DOWNSTAIRS
#4 SITTING
#5 STANDING
#6 LAYING
#tt$V1[tt$V1==5]<-"FON"

#bigData

header<-data.frame()
theHeader<-data.frame()
theMeans<-data.frame()


for( i in seq(30))
{
    for(j in 1:6) {
        header[1,1]<-i
        header[1,2]<-j
        oneMeans<-colMeans(bigData[bigData$Volunteer_Id==i & bigData$Activity==j,][,4:dim(bigData)[2]])
        theMeans<-rbind(theMeans,oneMeans)
        theHeader<-rbind(theHeader,header)
        
    }
}

theMeans<-cbind(header,theMeans)
names(theMeans)<-names(bigData[-match("UsedIn",names(bigData))])

bigData$Activity[bigData$Activity==1]<-"WALKING"
bigData$Activity[bigData$Activity==2]<-"WALKING_UPSTAIRS"
bigData$Activity[bigData$Activity==3]<-"WALKING_DOWNSTAIRS"
bigData$Activity[bigData$Activity==4]<-"SITTING"
bigData$Activity[bigData$Activity==5]<-"STANDING"
bigData$Activity[bigData$Activity==6]<-"LAYING"

theMeans$Activity[theMeans$Activity==1]<-"WALKING"
theMeans$Activity[theMeans$Activity==2]<-"WALKING_UPSTAIRS"
theMeans$Activity[theMeans$Activity==3]<-"WALKING_DOWNSTAIRS"
theMeans$Activity[theMeans$Activity==4]<-"SITTING"
theMeans$Activity[theMeans$Activity==5]<-"STANDING"
theMeans$Activity[theMeans$Activity==6]<-"LAYING"

write.table(bigData,paste(path,"//combinedData.txt",sep=""))
write.table(theMeans,paste(path,"//combinedMeanData.txt",sep=""))
bigData

}

getMeans<-function()
{
    path1<-paste(".//UCI HAR Dataset","//combinedMeanData.txt",sep="")
    theMeans<-read.table(path1)
    theMeans
    
}
