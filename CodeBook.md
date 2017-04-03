## Introduction

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

