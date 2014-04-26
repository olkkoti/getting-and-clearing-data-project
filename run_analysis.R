## Read test and train data and concatenate them.

x_test <- read.table("test/X_test.txt")
x_train <- read.table("train/X_train.txt")
x_combined <- rbind(x_test, x_train)

## Get the variable columns and names of the features we wish to keep.
## These features have either mean() or std() in their names.

all_features <- read.table("features.txt", col.names=c("variable", "name"))
features_to_keep <- grep("mean\\(\\)|std\\(\\)", all_features$name)
features <- all_features[features_to_keep,]

## Extract only wanted columns and name them. Also, tidy the names a bit.

data <- x_combined[, features$variable]
names(data) <- features$name
names(data) <- gsub("-mean\\(\\)-?", "Mean", names(data))
names(data) <- gsub("-std\\(\\)-?", "Std", names(data))

## Read test and train activity numbers and concatenate them.
## Add them to data.

y_test <- read.table("test/y_test.txt", col.names=c("activityNumber"))
y_train <- read.table("train/y_train.txt", col.names=c("activityNumber"))
y_combined <- rbind(y_test, y_train)
data <- cbind(y_combined, data)

## Read subjects and add them to data.

test_subjects <- read.table("test/subject_test.txt", col.names=c("subject"))
train_subjects <- read.table("train/subject_train.txt", col.names=c("subject"))
combined_subjects <- rbind(test_subjects, train_subjects)
data <- cbind(combined_subjects, data)

## Read the activity names and merge them with data.

activity_labels <- read.table("activity_labels.txt", col.names=c("activityNumber", "activityName"))
labeled_data <- merge(x=data, y=activity_labels, by="activityNumber")

## Create tidy data by taking average of each variable by subject and activity.

tidy_data <- aggregate(data, by=list(data$subject, data$activityNumber), FUN=mean)

## Merge activity names to tidy data.

tidy_data <- merge(x=tidy_data, y=activity_labels, by="activityNumber")

# Remove redundant grouping columns from tidy data.
columns_to_remove <- c("Group.1", "Group.2")
tidy_data <- tidy_data[, !(names(tidy_data) %in% columns_to_remove)]

