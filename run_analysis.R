#
# Getting and clearning data - Course Project 2
#

tidy_data <- function(path, output_filename="tidy_dataset.txt") {

    if (!file.exists(path)) {
        stop(paste("Can't find", path))
    }

    setwd(path)

    ## 1. Merge the training and the test sets to create one data set.

    ## Test dataset
    cat("Loading test dataset...\n")
    test_set <- read.table("test/X_test.txt")
    test_labels <- read.table("test/y_test.txt", colClasses = c("factor"), col.names=c("Activity"))
    subject_test <- read.table("test/subject_test.txt", col.names=c("Subject"))
    test <- cbind(subject_test, test_labels, test_set)

    ## Training dataset
    cat("Loading training dataset...\n")
    train_set <- read.table("train/X_train.txt")
    train_labels <- read.table("train/y_train.txt", colClasses = c("factor"), col.names=c("Activity"))
    subject_train <- read.table("train/subject_train.txt", col.names=c("Subject"))
    train <- cbind(subject_train, train_labels, train_set)

    ## Train and test merged
    cat("Merging...\n")
    merged <- rbind(train, test)


    cat("Tidying...\n")
    ## 2. Extract only the measurements on the mean and standard deviation for each 
    ## measurement. 
    features <- read.table("features.txt", col.names=c("Id", "Name"))
    mean_cols <- grep("mean", features$Name)
    std_cols <- grep("std", features$Name)
    new_cols <- c(mean_cols, std_cols)
    merged_subset <- merged[, c(1, 2, new_cols+2)]


    ## 3. Use descriptive activity names to name the activities in the data set
    activity_labels <- read.table("activity_labels.txt", col.names=c("Id", "Activity"))
    levels(merged_subset$Activity) <- activity_labels$Activity


    ## 4. Appropriately label the data set with descriptive variable names. 
    colnames(merged_subset)[3:ncol(merged_subset)] <- as.character(features$Name[new_cols])


    ## 5. From the data set in step 4, create a second, independent tidy data set
    ## with the average of each variable for each activity and each subject.
    library(dplyr)
    tidy_dataset <- merged_subset %>%
        group_by(Subject, Activity) %>%
        arrange(Subject) %>%
        summarise_each(funs(mean))

    cat("\nDone.\n")

    write.table(tidy_dataset, output_filename, row.names=FALSE)
    cat(paste("Saved", output_filename))

    return(tidy_dataset)
}

