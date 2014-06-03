CodeBook.md
===========

I used the dataset UCI HAR Dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones ) - Human Activity Recognition Using Smartphones Data Set 

Cleaning data
=============
* Combine the X_train.txt, subject_train.txt, and y_train.txt into train
* Combine the X_test.txt, subject_test.txt, and y_test.txt into test
* Combine train and test into data
* Rename variables names using the features.txt file
* Select only variables that use mean and standard deviation
* Transform activity number to descriptive names
* Save tidy dataset

Average of each Variable for each Activity and each Subject. 
============================================================
* use the aggregate function to do that

Variables
=========
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time       domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd  order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and
tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of  0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and              tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag,               tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,           fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

mean(): Mean value
std(): Standard deviation

subject - who performed the activity
activity - type of activity performed - (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

tBodyAcc-mean()-X           
tBodyAcc-mean()-Y          
tBodyAcc-mean()-Z
tBodyAcc-std()-X           
tBodyAcc-std()-Y
tBodyAcc-std()-Z           
tGravityAcc-mean()-X
tGravityAcc-mean()-Y       
tGravityAcc-mean()-Z        
tGravityAcc-std()-X        
tGravityAcc-std()-Y
tGravityAcc-std()-Z        
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y      
tBodyAccJerk-mean()-Z
tBodyAccJerk-std()-X       
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z       
tBodyGyro-mean()-X          
tBodyGyro-mean()-Y         
tBodyGyro-mean()-Z          
tBodyGyro-std()-X          
tBodyGyro-std()-Y
tBodyGyro-std()-Z          
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y     
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X      
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z      
tBodyAccMag-mean()          
tBodyAccMag-std()          
tGravityAccMag-mean()       
tGravityAccMag-std()       
tBodyAccJerkMag-mean()      
tBodyAccJerkMag-std()      
tBodyGyroMag-mean()         
tBodyGyroMag-std()         
tBodyGyroJerkMag-mean()     
tBodyGyroJerkMag-std()     
fBodyAcc-mean()-X
fBodyAcc-mean()-Y          
fBodyAcc-mean()-Z
fBodyAcc-std()-X           
fBodyAcc-std()-Y
fBodyAcc-std()-Z           
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y      
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X       
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z       
fBodyGyro-mean()-X
fBodyGyro-mean()-Y         
fBodyGyro-mean()-Z
fBodyGyro-std()-X          
fBodyGyro-std()-Y
fBodyGyro-std()-Z          
fBodyAccMag-mean()          
fBodyAccMag-std()          
fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()  
fBodyBodyGyroMag-mean()     
fBodyBodyGyroMag-std()     
fBodyBodyGyroJerkMag-mean() 
fBodyBodyGyroJerkMag-std() 
subject                     
activity                   
