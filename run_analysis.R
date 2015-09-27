run_analysis <- function () {

    ## run_analysis() accepts no arguments and tidys device accelerometer and gyroscope data from a Samsung Galaxy S device
    ## NOTES: 
    ##    - This script assumes the raw data files are in the same working directory as this R script
    
    ## Load the ACTIVITY data from files and merge into one dataset
    ActivityTest  <- read.table("test/y_test.txt", header = FALSE)
    ActivityTrain <- read.table("train/y_train.txt", header = FALSE)
    Activity <- rbind(ActivityTrain, ActivityTest)
    ## set readable names for ACTIVITY dataset
    names(Activity) <- c("activity")
    
    ## Load the SUBJECT data from files and merge into one dataset
    SubjectTrain <- read.table("train/subject_train.txt", header = FALSE)
    SubjectTest  <- read.table("test/subject_test.txt", header = FALSE)
    Subject <- rbind(SubjectTrain, SubjectTest)
    ## set readable names for SUBJECT dataset.
    names(Subject) <- c("subject")
    
    ## Load the FEATURES data from files (this is the accelerometer/gyroscope data) and merge into one dataset
    FeaturesTest  <- read.table("test/X_test.txt" , header = FALSE)
    FeaturesTrain <- read.table("train/X_train.txt", header = FALSE)
    Features <- rbind(FeaturesTrain, FeaturesTest)
    ## set readable names for FEATURES dataset from external TXT file
    FeaturesNames <- read.table("features.txt", head=FALSE)
    names(Features) <- FeaturesNames$V2
    
    ## Merge all data into one dataset
    AllData <- cbind(Subject, Activity, Features)

    ## Find only the columns with MEAN or STANDARD DEVIATION data and add the subject and activity as first two columns
    Mean_and_StDev_Cols <- FeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", FeaturesNames$V2)]
    selectedNames <- c("subject", "activity", as.character(Mean_and_StDev_Cols))
    FinalData <- subset(AllData,select=selectedNames)
    
    ## Load ACTIVITY LABELS from TXT file
    activityLabels <- read.table("activity_labels.txt", header = FALSE)
    names(activityLabels) <- c("activity","description")
    # Update the FinalData activity column from number ids to descriptive names using labels table
    FinalData[,2] = activityLabels[FinalData[,2],2]

    ## Make column names human readable
    names(FinalData) <- gsub("^t", "time", names(FinalData))
    names(FinalData) <- gsub("^f", "frequency", names(FinalData))
    names(FinalData) <- gsub("Acc", "Accelerometer", names(FinalData))
    names(FinalData) <- gsub("Gyro", "Gyroscope", names(FinalData))
    names(FinalData) <- gsub("Mag", "Magnitude", names(FinalData))
    names(FinalData) <- gsub("BodyBody", "Body", names(FinalData))
    
    ## Create new dataset for TIDY average of each subject and activity
    tidyData <- aggregate(formula=.~subject+activity, data=FinalData, FUN=mean)
    write.table(tidyData, file="tidy_data.txt", row.name=FALSE)
}