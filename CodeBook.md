## Project Description
For purpose of project and notes on the original data and measurements please refer to link in ReadMe.md file

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

Cleaning: rename columns using data from features.txt file, only inlcude columns that are mean or STD. Then use Cbind to create new clean data using the 3 output tables from the previous rbind

## Creating Tidy Data file

create a second tidy data set with the average of each variable for each activity and each subject

1. use aggregate function to get mean of all coulumn by spliiting data by activity and subject
2. remove additional coulumns for mean of subject and activity
3. creatre new text from tidy data set
4. 
## Description of the variables in the tiny_data.txt file
