library(plyr)

# Step #1 (Merge training and test set to 1 data set)
#####################################################

#Load data
data_train <- read.table("UCI HAR Dataset\\train\\X_train.txt")
activity_train <- read.table("UCI HAR Dataset\\train\\Y_train.txt")
subject_train <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
data_test <- read.table("UCI HAR Dataset\\test\\X_test.txt")
activity_test <- read.table("UCI HAR Dataset\\test\\Y_test.txt")
subject_test <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
header_names<-read.table("UCI HAR Dataset\\features.txt")

#Build data sets
train_data <- cbind(subject_train, activity_train, data_train)
test_data <- cbind(subject_test, activity_test, data_test)

#Merge data sets and rename column names
HAR_data<-rbind(train_data, test_data)
colHeaders<-c("Subject", "Activity", as.character(header_names[,2]))
names(HAR_data)<-colHeaders

# Step #2 (Extract mean and standard deviation)
#################################################

#Get requested columns
requestedCols<-grep("[-]std[(][)]|[-]mean[(][)]", colHeaders)

#Add subject and activity colums (columns 1 and 2)
relevantCols <- c(1, 2, requestedCols)

#subset relevant columns
HAR_data <- HAR_data[, relevantCols]

# Step #3 (Replace activity codes by activity names)
#################################################

#Get activity names
activity_names <- read.table("UCI HAR Dataset\\activity_labels.txt")

#Replace activity code by its name
HAR_data[, 2] <- activity_names[HAR_data[, 2], 2]

# Step #4 (Provide descriptive variable names)
#################################################

#Rename subject and activity were already done in step #1
names(HAR_data)<-gsub("^t", "time", names(HAR_data))
names(HAR_data)<-gsub("^f", "frequency", names(HAR_data))
names(HAR_data)<-gsub("Acc", "Accelerometer", names(HAR_data))
names(HAR_data)<-gsub("Gyro", "Gyroscope", names(HAR_data))
names(HAR_data)<-gsub("Mag", "Magnitude", names(HAR_data))
names(HAR_data)<-gsub("BodyBody", "Body", names(HAR_data))

# Step #5 (Create independent tidy data set and do some processing)
#################################################

#Calculate data averages and order by subject, activity
HAR_data_aggregated<-aggregate(. ~Subject + Activity, HAR_data, mean)
HAR_data_aggregated<-HAR_data_aggregated[order(HAR_data_aggregated$Subject,HAR_data_aggregated$Activity),]
    
#Save data in file
write.table(HAR_data_aggregated, "tidydata.txt", row.name=FALSE)

#Quality check: Read file and check whether there are 181 lines (30 subjects with 6 activities + 1 header line)
file <- read.delim("tidydata.txt", header = FALSE, sep=" ")
qc <- "Quality Check: Pass"
if(length(file[,1]) != 181){
    qc <- "Quality Check: Fail"
} 
#Show quality check's result
qc
