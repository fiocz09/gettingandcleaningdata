#download and unzip
zip.url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(zip.url, destfile = "dataset.zip")
unzip("dataset.zip")

#function loading datasets
load.dataset <- function(set, features, labels){
        prefix <- paste0(set, "/")
        file.data <- paste0(prefix, "X_", set, ".txt")
        file.labe <- paste0(prefix, "y_", set, ".txt")
        file.subj <- paste0(prefix, "subject_", set, ".txt")
        
        data <- read.table(file.data)[, features$index]
        names(data) <- features$name
        
        label.set <- read.table(file.labe)[, 1]
        data$label <- factor(label.set, levels=labels$level, labels=labels$label)
        
        subject.set <- read.table(file.subj)[, 1]
        data$subject <- factor(subject.set)
        
        data.table(data)
}

#form a combined dataset
setwd("UCI HAR Dataset/")
feature.set <- read.table("features.txt", col.names = c("index", "name"))
feature <- subset(feature.set, grepl("-(mean|std)[(]", feature.set$name))
label.set <- read.table("activity_labels.txt", col.names = c("level", "label"))
train.set <- load.dataset("train", feature, label.set)
test.set <- load.dataset("test", feature, label.set)
dataset <- rbind(train.set, test.set)

#some cleaning
tidy.dataset <- dataset[, lapply(.SD, mean), by=list(label, subject)]
names <- names(tidy.dataset)
names <- gsub("-mean", "Mean", names)
names <- gsub("-std", "Std", names)
names <- gsub("[()-]", "", names)
names <- gsub("BodyBody", "Body", names)
setnames(tidy.dataset, names)

#final result
setwd("..")
write.table(tidy.dataset, file = "tidydata.txt")

tidy.dataset