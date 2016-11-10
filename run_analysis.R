## 
##The program extracts only the required columns from the two data sets and combined it with 
##their respective subject and activity to make separate traning data set and testing data set.		
##These in turn were combined to a single data set preseving their order.	Column headers are formatted
##The activity was given as a code of 1 -6 and these were replaced with their corresponding description.
##The final data set was then grouped by activity and subject. This data was then used to calculate the
##average value per subject per activity and written to the final output table accelerationdata.csv.		
## sample  to invoke the script 

## run_analysis("C:\\CleaningData\\week4\\Project\\Dataset")
## where the path contains the unzipped source data provided for this assignment from
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

library(data.table)
library(plyr)
library(sqldf)
library(dplyr)

run_analysis <- function(path) {
## read the data for the required columns only ( mean/std for X, Y, Z )

  setwd(path)
train <- fread("./train/X_train.txt", select = c(1:6,41:46,81:86,121:126,161:166,266:271,345:350,424:429) )
test <- fread("./test/X_test.txt", select = c(1:6,41:46,81:86,121:126,161:166,266:271,345:350,424:429) )

## create column header vector for the selected columns only
ncols <- fread("features.txt", select = 2)
ncols <- data.frame(sqldf("select * from ncols where V2 like '%mean()-%' OR V2 like '%std()-%'"))
ncols <- transpose(ncols)
colhead <- ncols[1,]

## prepare activity labels
activitylabels <- read.table("activity_labels.txt")
ytrain <-  read.table("./train/Y_train.txt")
ytest <-  read.table("./test/Y_test.txt")

## prepare subject
subtrain <- read.table("./train/subject_train.txt")
subtest <- read.table("./test/subject_test.txt")

## set activity labels instead of the numbers for the Y-train and Y-test data
rowtrain <- join(ytrain,activitylabels, by="V1")
colnames(rowtrain) <- c("ID", "activity")

rowtest <- join(ytest,activitylabels, by="V1")
colnames(rowtest) <- c("ID", "activity")

## attach activity to data set 
ymintrain <- cbind2(rowtrain$activity, train)
ymintest <- cbind2(rowtest$activity, test)

## attach subject to data set as first column
ysubtrain <- cbind2( subtrain,ymintrain)
ysubtest <- cbind2 (subtest, ymintest)

## union the two data set
yalldata <- rbind2(ysubtrain,ysubtest)
yalldata <- data.table(yalldata)

## attach the column header
colnames(yalldata) <- c ( "subject" ,"activity",  as.character(colhead))

## format column names

`colnames<-`(yalldata, tolower(names(yalldata)))
`colnames<-`(yalldata, gsub("\\()-","",names(yalldata),))

## create summary tidy data
gdata <- group_by(yalldata, activity,subject)
accelerationdata <-data.table(aggregate(gdata[,3:50],list(gdata$activity,gdata$subject),mean))
colnames(accelerationdata)[match("Group.1",colnames(accelerationdata))] <- "activity"
colnames(accelerationdata)[match("Group.2",colnames(accelerationdata))] <- "subject"

# write the output to a file
write.csv(accelerationdata, "accelerationData.csv")

}
