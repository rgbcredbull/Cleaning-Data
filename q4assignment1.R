library(data.table)

# Activity 1: Build & Merge training and test sets to create one conjoined data set
# 
# Building datasets from test Data X_test.txt, y_test.txt, and subject_test.txt.

testData<-read.table("./UCI HAR Dataset/test/X_test.txt")
testColumns<-read.table("./UCI HAR Dataset/test/y_test.txt")
testSubjects<-read.table("./UCI HAR Dataset/test/subject_test.txt")

# Building datasets from train data X_train.txt, y_train.txt, and subject_train.txt.

trainData<-read.table("./UCI HAR Dataset/train/X_train.txt")
trainColumns<-read.table("./UCI HAR Dataset/train/y_train.txt")
trainSubjects<-read.table("./UCI HAR Dataset/train/subject_train.txt")

# Combining test and train data sets.
testMaster<-cbind(testSubjects,testColumns,testData)
trainMaster<-cbind(trainSubjects,trainColumns,trainData)

# Building single dataset by combining master test and train data sets.
comboPlatter<-rbind(testMaster,trainMaster)

# Activity 2: Extract Mean & Standard Deviation Variables
# 
# Import features text into columnHeaders variable to apply to single, combined data set "comboPlatter."
columnHeaders<-read.table("./UCI HAR Dataset/features.txt")

# Filtering out mean or std names
dataFilter<-grep(".*mean.*|.*std.*",columnHeaders[,2])
comboPlatter<-comboPlatter[,dataFilter]

# Activity 3: Descriptive naming of activities.

# Adhering variable names to combination data set.
names(comboPlatter)<-columnHeaders[dataFilter,2]

# Import activity labels
activityNames<-read.table("./UCI HAR Dataset/activity_labels.txt")
activityNames[,2]<-as.character(activityNames[,2])

# Activity 4: Applying descriptive names of columns and rows.

colnames(comboPlatter)<-c("Subject","Activity")

#Break out individual activity labels, applying labels to combination data set.
comboPlatter$activity<-factor(comboPlatter$activity,labels=activityNames[,2])

# Activity 5: Creating tidyData set

newGroup<-melt(comboPlatter,c("Subject","Activity"))
tidyData<-dcast(newGroup,subject+activity~averages,fun=mean)
#tidyData<-dcast(newGroup,fun=mean)
colnames(tidyData)[3]<-"average"

write.table(tidyData,file="tidyAverages.txt")

