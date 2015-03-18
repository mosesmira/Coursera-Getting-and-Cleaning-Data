# 1- Merges the training and the test sets to create one data set.
# 2- Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3- Uses descriptive activity names to name the activities in the data set
# 4- Appropriately labels the data set with descriptive variable names. 
# 5- From the data set in step 4, creates a second, independent tidy data set with the average
# of each variable for each activity and each subject.

# part 1: merge 2 data sets into 1

# read training and test data and merge using rbind

train_data_subj <- read.table("train/subject_train.txt")
test_data_subj <- read.table("test/subject_test.txt")
merged_subj_data <- rbind(train_data_subj, test_data_subj)

train_data_activity <- read.table("train/y_train.txt")
test_data_activity <- read.table("test/y_test.txt")
merged_activity_data <- rbind(train_data_activity, test_data_activity)

train_data_vals <- read.table("train/X_train.txt")
test_data_vals <- read.table("test/X_test.txt")
merged_data_vals <- rbind(train_data_vals, test_data_vals)

# part2 and part 4: rename columns in x-data from features file, only inlcude columns that are mean or STD
    # 1. read features.txt
features <- read.table("features.txt")
    # 2. select mean and STD columns
used_features <- grep("-mean\\(\\)|-std\\(\\)",features[,2])
used_data <- merged_data_vals[,used_features]

names(used_data) <- gsub("\\(|\\)","",names(used_data))
    # 3. rename columns 
names(used_data) <- tolower(features[used_features, 2])
names(merged_subj_data) <- "subject"
names(merged_activity_data) <- "activity"

    # 4. merge data
all_data <- cbind(merged_subj_data,merged_activity_data,used_data)
    
# part3: use descriptive activity names for activiteis in data set

    # 1. read activity_labels.txt
activity <- read.table("activity_labels.txt")
    # 2. replace numbers in activity column by activity names 
all_data[,2] = activity[all_data[,2],2]

# part 5: create a second tidy data set with the average of each variable for each activity and each subject

    # 1. use aggregate function to get mean of all coulumn by spliiting data by activity and subject
tidy_data = aggregate(all_data, by=list(activity = all_data$activity,subject = all_data$subject), mean)
    # 2. remove additional coulumns for mean of subject and activity
tidy_data[,4] = NULL
tidy_data[,3] = NULL
    # 3. creatre new text from tidy data set
write.table(tidy_data, "tidyData.txt", row.names=FALSE)
