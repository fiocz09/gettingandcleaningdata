#[CodeBook] Getting and Cleaning Data Course Project

##Data for the Project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Full description of the Data:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Process: 
Create one R script called run_analysis.R that does the following. 
1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive activity names. 
5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Data Columns:
[1] "label"                 [2] "subject"               [3] "tBodyAccMeanX"       
[4] "tBodyAccMeanY"         [5] "tBodyAccMeanZ"         [6] "tBodyAccStdX"        
[7] "tBodyAccStdY"          [8] "tBodyAccStdZ"          [9] "tGravityAccMeanX"    
[10] "tGravityAccMeanY"     [11] "tGravityAccMeanZ"     [12] "tGravityAccStdX"     
[13] "tGravityAccStdY"      [14] "tGravityAccStdZ"      [15] "tBodyAccJerkMeanX"   
[16] "tBodyAccJerkMeanY"    [17] "tBodyAccJerkMeanZ"    [18] "tBodyAccJerkStdX"    
[19] "tBodyAccJerkStdY"     [20] "tBodyAccJerkStdZ"     [21] "tBodyGyroMeanX"      
[22] "tBodyGyroMeanY"       [23] "tBodyGyroMeanZ"       [24] "tBodyGyroStdX"       
[25] "tBodyGyroStdY"        [26] "tBodyGyroStdZ"        [27] "tBodyGyroJerkMeanX"  
[28] "tBodyGyroJerkMeanY"   [29] "tBodyGyroJerkMeanZ"   [30] "tBodyGyroJerkStdX"   
[31] "tBodyGyroJerkStdY"    [32] "tBodyGyroJerkStdZ"    [33] "tBodyAccMagMean"     
[34] "tBodyAccMagStd"       [35] "tGravityAccMagMean"   [36] "tGravityAccMagStd"   
[37] "tBodyAccJerkMagMean"  [38] "tBodyAccJerkMagStd"   [39] "tBodyGyroMagMean"    
[40] "tBodyGyroMagStd"      [41] "tBodyGyroJerkMagMean" [42] "tBodyGyroJerkMagStd" 
[43] "fBodyAccMeanX"        [44] "fBodyAccMeanY"        [45] "fBodyAccMeanZ"       
[46] "fBodyAccStdX"         [47] "fBodyAccStdY"         [48] "fBodyAccStdZ"        
[49] "fBodyAccJerkMeanX"    [50] "fBodyAccJerkMeanY"    [51] "fBodyAccJerkMeanZ"   
[52] "fBodyAccJerkStdX"     [53] "fBodyAccJerkStdY"     [54] "fBodyAccJerkStdZ"    
[55] "fBodyGyroMeanX"       [56] "fBodyGyroMeanY"       [57] "fBodyGyroMeanZ"      
[58] "fBodyGyroStdX"        [59] "fBodyGyroStdY"        [60] "fBodyGyroStdZ"       
[61] "fBodyAccMagMean"      [62] "fBodyAccMagStd"       [63] "fBodyAccJerkMagMean" 
[64] "fBodyAccJerkMagStd"   [65] "fBodyGyroMagMean"     [66] "fBodyGyroMagStd"     
[67] "fBodyGyroJerkMagMean" [68] "fBodyGyroJerkMagStd" 