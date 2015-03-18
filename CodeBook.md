## Project Description
For general purpose of project and notes on the original data and measurements please refer to link in ReadMe.md file

purpose of course project is as follows

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Description of Files Used

# General files

activity_lables.txt [6X1] : description of 6 different activities

features.txt [561X1]: 561 different features that are matched to data in the X_test/X_train files

#test data includes

subject_test.txt [10299X1] : a value from 1 to 30 denoting the subject numnber for test data

X_test.txt [10299X561] : values for the different 561 variables that are described in features.txt

y_test.txt [10299X561] : a value from 1 to 6 denoting the different activities described in activity_lables.txt

#train data includes

subject_train.txt [10299X1] : a value from 1 to 30 denoting the subject numnber for train data

X_train.txt [10299X561] : values for the different 561 variables that are described in features.txt

y_train.txt [10299X561] : a value from 1 to 6 denoting the different activities described in activity_lables.txt


## Merging and Cleaning of Data

Merging: merge 2 data sets of test and train into one: read training and test data files and merge using rbind for each of 3 text files in the test/train data folder

Cleaning: rename columns using data from features.txt file, only inlcude columns that are mean or STD.

mean(): Mean value

std(): Standard deviation

Then use Cbind to create new clean data using the 3 output tables from the previous rbind

## Creating Tidy Data file

create a second tidy data set with the average of each variable for each activity and each subject

1. use aggregate function to get mean of all coulumn by spliiting data by activity and subject
2. remove additional coulumns for mean of subject and activity
3. creatre new text file tidyData.txt from tidy data set

## Description of the variables in the tinyData.txt file

rows represent mean values for the tidy data set that is the average of each variable for each activity and each subject.

Columns:
 [1] "activity"                    "subject"                     "tbodyacc-mean()-x"          
 [4] "tbodyacc-mean()-y"           "tbodyacc-mean()-z"           "tbodyacc-std()-x"           
 [7] "tbodyacc-std()-y"            "tbodyacc-std()-z"            "tgravityacc-mean()-x"       
[10] "tgravityacc-mean()-y"        "tgravityacc-mean()-z"        "tgravityacc-std()-x"        
[13] "tgravityacc-std()-y"         "tgravityacc-std()-z"         "tbodyaccjerk-mean()-x"      
[16] "tbodyaccjerk-mean()-y"       "tbodyaccjerk-mean()-z"       "tbodyaccjerk-std()-x"       
[19] "tbodyaccjerk-std()-y"        "tbodyaccjerk-std()-z"        "tbodygyro-mean()-x"         
[22] "tbodygyro-mean()-y"          "tbodygyro-mean()-z"          "tbodygyro-std()-x"          
[25] "tbodygyro-std()-y"           "tbodygyro-std()-z"           "tbodygyrojerk-mean()-x"     
[28] "tbodygyrojerk-mean()-y"      "tbodygyrojerk-mean()-z"      "tbodygyrojerk-std()-x"      
[31] "tbodygyrojerk-std()-y"       "tbodygyrojerk-std()-z"       "tbodyaccmag-mean()"         
[34] "tbodyaccmag-std()"           "tgravityaccmag-mean()"       "tgravityaccmag-std()"       
[37] "tbodyaccjerkmag-mean()"      "tbodyaccjerkmag-std()"       "tbodygyromag-mean()"        
[40] "tbodygyromag-std()"          "tbodygyrojerkmag-mean()"     "tbodygyrojerkmag-std()"     
[43] "fbodyacc-mean()-x"           "fbodyacc-mean()-y"           "fbodyacc-mean()-z"          
[46] "fbodyacc-std()-x"            "fbodyacc-std()-y"            "fbodyacc-std()-z"           
[49] "fbodyaccjerk-mean()-x"       "fbodyaccjerk-mean()-y"       "fbodyaccjerk-mean()-z"      
[52] "fbodyaccjerk-std()-x"        "fbodyaccjerk-std()-y"        "fbodyaccjerk-std()-z"       
[55] "fbodygyro-mean()-x"          "fbodygyro-mean()-y"          "fbodygyro-mean()-z"         
[58] "fbodygyro-std()-x"           "fbodygyro-std()-y"           "fbodygyro-std()-z"          
[61] "fbodyaccmag-mean()"          "fbodyaccmag-std()"           "fbodybodyaccjerkmag-mean()" 
[64] "fbodybodyaccjerkmag-std()"   "fbodybodygyromag-mean()"     "fbodybodygyromag-std()"     
[67] "fbodybodygyrojerkmag-mean()" "fbodybodygyrojerkmag-std()" 

