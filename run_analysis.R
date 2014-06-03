#"Getting and Cleaning Data"

setwd("UCI HAR Dataset/")

# Load activity labels
activity_labels <- read.table("activity_labels.txt")

# Load features names
features_name <- read.table("features.txt")

# Load training data
X_train <- read.table("./train/X_train.txt")
subject_train <- read.table("./train/subject_train.txt")
y_train <- read.table("./train/y_train.txt")

# Load testing data
X_test <- read.table("./test/X_test.txt")
subject_test <- read.table("./test/subject_test.txt")
y_test <- read.table("./test/y_test.txt")

# Combine the training data
train <- cbind(X_train, subject_train, y_train)

# Combine the testing data
test <- cbind(X_test, subject_test, y_test)

# Merge training and testing data
data <- rbind(train, test)

# Use the feature names as the variable name
names(data) <- c(as.character(features_name[,2]), "subject", "activity")

# Only measurement on the mean and standard deviation are required, 562 -> subject, 563 -> activity
data <- data[,c(grep("mean\\(\\)|std\\(\\)", names(data)),562,563)]

# Rename the activity number to description names
data$activity <-  activity_labels[data$activity,2]

# Average of each variable for each activity and each subject
agg <- aggregate(. ~ subject + activity, data=data, FUN = mean)

setwd("../.")
# Save tidy data
write.csv(data, file="tidy_samsung.csv", row.names=FALSE)
write.csv(agg, file="tidy_aggregated.csv", row.names=FALSE)
