---
title: "CodeBook.md"
author: "John Lagonigro"
date: "September 26, 2015"
output: html_document
---

###tidy_data.txt CONVERSIONS
* tidy_data.txt contains the average of each variable for each activity and each subject.
* activity column has been converted from numeric id to the corresponding text description based on the **activity_labels.txt** file
* all "feature" column names (all columns in the file except the first 2, which are subject and activity) have been pulled from the **features.txt** file
* All "feature" column names have been edited for readability according to the following criteria:
    + "t" at the beginning of a name has been changed to "time"
    + "f" at the begining of a name has been changed to "frequency"
    + "Acc" has been changed to "Accelerometer"
    + "Gyro" has been changed to "Gyroscope"
    + "Mag" has been changed to "Magnitude"
    + "BodyBody" has been changed to "Body"


####UPDATED DEFINITIONS OF VARIABLES IN tidy_data.txt *(in order from left to right)*
* subject: Numeric ID of person who data was captured about
* activity: Text description of activity/exercise being observed (converted from numeric id in original data set)
* timeBodyAccelerometer-mean()-X: Numeric average of data captured by device (converted from numeric id in original data set)
* timeBodyAccelerometer-mean()-Y: Numeric average of data captured by device
* timeBodyAccelerometer-mean()-Z: Numeric average of data captured by device
* timeBodyAccelerometer-std()-X: Numeric standard deviation of data captured by device
* timeBodyAccelerometer-std()-Y: Numeric standard deviation of data captured by device
* timeBodyAccelerometer-std()-Z: Numeric standard deviation of data captured by device
* timeGravityAccelerometer-mean()-X: Numeric average of data captured by device
* timeGravityAccelerometer-mean()-Y: Numeric average of data captured by device
* timeGravityAccelerometer-mean()-Z: Numeric average of data captured by device
* timeGravityAccelerometer-std()-X: Numeric standard deviation of data captured by device
* timeGravityAccelerometer-std()-Y: Numeric standard deviation of data captured by device
* timeGravityAccelerometer-std()-Z: Numeric standard deviation of data captured by device
* timeBodyAccelerometerJerk-mean()-X: Numeric average of data captured by device
* timeBodyAccelerometerJerk-mean()-Y: Numeric average of data captured by device
* timeBodyAccelerometerJerk-mean()-Z: Numeric average of data captured by device
* timeBodyAccelerometerJerk-std()-X: Numeric standard deviation of data captured by device
* timeBodyAccelerometerJerk-std()-Y: Numeric standard deviation of data captured by device
* timeBodyAccelerometerJerk-std()-Z: Numeric standard deviation of data captured by device
* timeBodyGyroscope-mean()-X: Numeric average of data captured by device
* timeBodyGyroscope-mean()-Y: Numeric average of data captured by device
* timeBodyGyroscope-mean()-Z: Numeric average of data captured by device
* timeBodyGyroscope-std()-X: Numeric standard deviation of data captured by device
* timeBodyGyroscope-std()-Y: Numeric standard deviation of data captured by device
* timeBodyGyroscope-std()-Z: Numeric standard deviation of data captured by device
* timeBodyGyroscopeJerk-mean()-X: Numeric average of data captured by device
* timeBodyGyroscopeJerk-mean()-Y: Numeric average of data captured by device
* timeBodyGyroscopeJerk-mean()-Z: Numeric average of data captured by device
* timeBodyGyroscopeJerk-std()-X: Numeric standard deviation of data captured by device
* timeBodyGyroscopeJerk-std()-Y: Numeric standard deviation of data captured by device
* timeBodyGyroscopeJerk-std()-Z: Numeric standard deviation of data captured by device
* timeBodyAccelerometerMagnitude-mean(): Numeric average of data captured by device
* timeBodyAccelerometerMagnitude-std(): Numeric standard deviation of data captured by device
* timeGravityAccelerometerMagnitude-mean(): Numeric average of data captured by device
* timeGravityAccelerometerMagnitude-std(): Numeric standard deviation of data captured by device
* timeBodyAccelerometerJerkMagnitude-mean(): Numeric average of data captured by device
* timeBodyAccelerometerJerkMagnitude-std(): Numeric standard deviation of data captured by device
* timeBodyGyroscopeMagnitude-mean(): Numeric average of data captured by device
* timeBodyGyroscopeMagnitude-std(): Numeric standard deviation of data captured by device
* timeBodyGyroscopeJerkMagnitude-mean(): Numeric average of data captured by device
* timeBodyGyroscopeJerkMagnitude-std(): Numeric standard deviation of data captured by device
* frequencyBodyAccelerometer-mean()-X: Numeric average of data captured by device
* frequencyBodyAccelerometer-mean()-Y: Numeric average of data captured by device
* frequencyBodyAccelerometer-mean()-Z: Numeric average of data captured by device
* frequencyBodyAccelerometer-std()-X: Numeric standard deviation of data captured by device
* frequencyBodyAccelerometer-std()-Y: Numeric standard deviation of data captured by device
* frequencyBodyAccelerometer-std()-Z: Numeric standard deviation of data captured by device
* frequencyBodyAccelerometerJerk-mean()-X: Numeric average of data captured by device
* frequencyBodyAccelerometerJerk-mean()-Y: Numeric average of data captured by device
* frequencyBodyAccelerometerJerk-mean()-Z: Numeric average of data captured by device
* frequencyBodyAccelerometerJerk-std()-X: Numeric standard deviation of data captured by device
* frequencyBodyAccelerometerJerk-std()-Y: Numeric standard deviation of data captured by device
* frequencyBodyAccelerometerJerk-std()-Z: Numeric standard deviation of data captured by device
* frequencyBodyGyroscope-mean()-X: Numeric average of data captured by device
* frequencyBodyGyroscope-mean()-Y: Numeric average of data captured by device
* frequencyBodyGyroscope-mean()-Z: Numeric average of data captured by device
* frequencyBodyGyroscope-std()-X: Numeric standard deviation of data captured by device
* frequencyBodyGyroscope-std()-Y: Numeric standard deviation of data captured by device
* frequencyBodyGyroscope-std()-Z: Numeric standard deviation of data captured by device
* frequencyBodyAccelerometerMagnitude-mean(): Numeric average of data captured by device
* frequencyBodyAccelerometerMagnitude-std(): Numeric standard deviation of data captured by device
* frequencyBodyAccelerometerJerkMagnitude-mean(): Numeric average of data captured by device
* frequencyBodyAccelerometerJerkMagnitude-std(): Numeric standard deviation of data captured by device
* frequencyBodyGyroscopeMagnitude-mean(): Numeric average of data captured by device
* frequencyBodyGyroscopeMagnitude-std(): Numeric standard deviation of data captured by device
* frequencyBodyGyroscopeJerkMagnitude-mean(): Numeric average of data captured by device
* frequencyBodyGyroscopeJerkMagnitude-std() : Numeric standard deviation of data captured by device

##LEGACY DATA DEFINITIONS
The source data package contains the following definitions:

####Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'