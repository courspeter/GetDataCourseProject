### Input data is assumed to have been extracted into the current working
### directory (i.e. data files are under "./UCI HAR Dataset/").
### Output data is written to "./output/feature-means.txt".

library(reshape2)

### step 1:
### merge the training and the test sets to create one data set

# read features; assign columns F### where ### is feature id
DTFcols <- read.table("UCI HAR Dataset/features.txt", row.names=1)
DTFcols <- as.matrix(DTFcols)[,1]
names(DTFcols) <- paste("F", names(DTFcols), sep="")
DTFTRN <- read.table("UCI HAR Dataset/train/X_train.txt", col.names=names(DTFcols))
DTFTST <- read.table("UCI HAR Dataset/test/X_test.txt", col.names=names(DTFcols))
DTF <- rbind(DTFTRN, DTFTST)
rm(DTFTRN, DTFTST)

# read subject; assign column S1
DTScols <- c(S1="subject")
DTSTRN <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names=names(DTScols))
DTSTST <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names=names(DTScols))
DTS <- rbind(DTSTRN, DTSTST)
rm(DTSTRN, DTSTST)

# read activity; assign column A1
DTAcols <- c(A1="activity")
DTAlabels_chr <- read.table("UCI HAR Dataset/activity_labels.txt", row.names=1, colClasses="character")[,1]
DTAlabels <- factor(DTAlabels_chr, levels=DTAlabels_chr)
DTATRN <- read.table("UCI HAR Dataset/train/y_train.txt", col.names=names(DTAcols))
DTATST <- read.table("UCI HAR Dataset/test/y_test.txt", col.names=names(DTAcols))
DTA <- rbind(DTATRN, DTATST)
rm(DTATRN, DTATST)

# combine all results into single dataframe
DT <- cbind(DTA, DTS, DTF)
rm(DTA, DTS, DTF)

### step 2:
### extract only the measurements on the mean and standard deviation for each
### measurement
DTFcolsmeanstd <- DTFcols[grep("-(mean|std)\\(\\)", DTFcols)]
DTcols <- c(DTAcols, DTScols, DTFcolsmeanstd)
DT <- DT[, names(DTcols)]

### step 3:
### use descriptive activity names to name the activities in the data set
DT$A1 <- DTAlabels[DT$A1]

### step 4:
### appropriately label the data set with descriptive variable names
names(DT) <- DTcols[names(DT)]

### step 5:
### from the data set in step 4, create a second, independent tidy data set with
### the average of each variable for each activity and each subject
DTmeans <- melt(DT, measure.vars=DTFcolsmeanstd)
DTmeans <- dcast(DTmeans, activity + subject ~ variable, mean)
DTmeans <- melt(DTmeans, measure.vars=DTFcolsmeanstd, variable.name="feature", value.name = "mean")
write.table(DTmeans, file="output/feature-means.txt", row.names=F)
