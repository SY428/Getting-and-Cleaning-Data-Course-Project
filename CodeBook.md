## Introduction

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Feature Selection 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

## run_analysis.R 

The R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## The "tidy_data.txt" includes the following column names

"Subject"     
"OutputActivity"  

"timeBodyAccel-mean-X"  
"timeBodyAccel-mean-Y"  
"timeBodyAccel-mean-Z"            
"timeBodyAccel-std-X"          
"timeBodyAccel-std-Y"           
"timeBodyAccel-std-Z"           
"timeGravityAccel-mean-X"      
"timeGravityAccel-mean-Y"       
"timeGravityAccel-mean-Z"       
"timeGravityAccel-std-X"       
"timeGravityAccel-std-Y"        
"timeGravityAccel-std-Z"        
"timeBodyAccelJerk-mean-X"     
"timeBodyAccelJerk-mean-Y"     
"timeBodyAccelJerk-mean-Z"     
"timeBodyAccelJerk-std-X"      
"timeBodyAccelJerk-std-Y"   
"timeBodyAccelJerk-std-Z"      
"timeBodyGyro-mean-X"          
"timeBodyGyro-mean-Y"    
"timeBodyGyro-mean-Z"          
"timeBodyGyro-std-X"           
"timeBodyGyro-std-Y"           
"timeBodyGyro-std-Z"           
"timeBodyGyroJerk-mean-X"      
"timeBodyGyroJerk-mean-Y"      
"timeBodyGyroJerk-mean-Z"       
"timeBodyGyroJerk-std-X"       
"timeBodyGyroJerk-std-Y"      
"timeBodyGyroJerk-std-Z"       
"timeBodyAccelMag-mean"        
"timeBodyAccelMag-std"        
"timeGravityAccelMag-mean"     
"timeGravityAccelMag-std"      
"timeBodyAccelJerkMag-mean"   
"timeBodyAccelJerkMag-std"      
"timeBodyGyroMag-mean"         
"timeBodyGyroMag-std"        
"timeBodyGyroJerkMag-mean"     
"timeBodyGyroJerkMag-std"      
"freqBodyAccel-mean-X"         
"freqBodyAccel-mean-Y"          
"freqBodyAccel-mean-Z"         
"freqBodyAccel-std-X"         
"freqBodyAccel-std-Y"           
"freqBodyAccel-std-Z"          
"freqBodyAccelJerk-mean-X"     
"freqBodyAccelJerk-mean-Y"      
"freqBodyAccelJerk-mean-Z"     
"freqBodyAccelJerk-std-X"    
"freqBodyAccelJerk-std-Y"       
"freqBodyAccelJerk-std-Z"      
"freqBodyGyro-mean-X"        
"freqBodyGyro-mean-Y"          
"freqBodyGyro-mean-Z"          
"freqBodyGyro-std-X"           
"freqBodyGyro-std-Y"            
"freqBodyGyro-std-Z"           
"freqBodyAccelMag-mean"        
"freqBodyAccelMag-std"          
"freqBodyBodyAccelJerkMag-mean"   
"freqBodyBodyAccelJerkMag-std"    
"freqBodyBodyGyroMag-mean"      
"freqBodyBodyGyroMag-std"      
"freqBodyBodyGyroJerkMag-mean"  
"freqBodyBodyGyroJerkMag-std" 

## The values of Activity Labels
1. WALKING  
2. WALKING_UPSTAIRS  
3. WALKING_DOWNSTAIRS  
4. SITTING   
5. STANDING  
6. LAYING  

## License:

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
