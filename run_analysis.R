#Load required packages
library(tidyr)
library(readr)
library(tidyr)
library(dplyr)
library(data.table)
library(dtplyr)

#Assemble loads the individual components of the dataset, merges the test and
#training data, labels the data columns, and selects mean() and std() of
#of meausred varialbes
# Args
#   path: The directory containing the downloaded data
# Returns
#   The subject, activity and mean() and std() of measure variables in the 
#   data

Assemble <- function(path = NULL) {
  #Load column names
  features.dir <- paste0(path, "UCI HAR Dataset/features.txt")
  features <- read_csv(features.dir, col_names = FALSE)
  
  #Load test subject ids
  test_subj.dir <- paste0(path, "UCI HAR Dataset/test/subject_test.txt")
  subject_test <- read_csv(test_subj.dir, col_names = FALSE)
  
  #Load test subject data
  X_test.dir <- paste0(path, "UCI HAR Dataset/test/X_test.txt")
  X_test <- read_table(X_test.dir, col_names = FALSE) 
  
  #Load test activity labels
  y_test.dir <- paste0(path, "UCI HAR Dataset/test/y_test.txt")                     
  y_test <- read_csv(y_test.dir, col_names = FALSE) 
  
  #Load training subjects
  train_subj.dir <-  paste0(path, "UCI HAR Dataset/train/subject_train.txt")
  subject_train <- read_csv(train_subj.dir, col_names = FALSE)
  
  #Load training data
  X_train.dir <- paste0(path, "UCI HAR Dataset/train/X_train.txt")
  X_train <- read_table(X_train.dir, col_names = FALSE) 
  
  #Load training activity 
  y_train.dir <- paste0(path, "UCI HAR Dataset/train/y_train.txt")                     
  y_train <- read_csv(y_train.dir, col_names = FALSE)
  
  #Load activity labels
  act_labels.dir <- paste0(path, "UCI HAR Dataset/activity_labels.txt")
  act_labels <- read_csv(act_labels.dir,
                         col_names = FALSE)
  
  #Assemble test and training data with variable labels
  test_data <- cbind(subject_test, y_test, X_test)
  train_data <- cbind(subject_train, y_train, X_train)
  full_data <- rbind(test_data, train_data)
  names(full_data) <- c("subject", "activity", unlist(features))
  
  #Seperate activity code and labels
  act_labels <- separate(act_labels, 
                         X1, 
                         c("activity_num", "activity_label"), 
                         sep = " ")
  
  #Convert activity num to numeric
  act_labels <- mutate(act_labels, activity_num = as.numeric(activity_num))
  
  #Add labels to data and remove numeric code for activities
  full_data <- inner_join(full_data, 
                          act_labels, 
                          by = c("activity" = "activity_num")) %>%
    select(-activity) %>%
    rename(activity = activity_label)
  
  #Sort Columns so activity is near start
  full_data <- full_data[, c("subject", 
                             "activity",
                             setdiff(names(full_data), 
                                     c("subject", "activity")))]


  
  #Select mean() and std() measures
  mean_std <- select(full_data,
                     subject,
                     activity,
                     grep("mean\\(\\)|std\\(\\)", names(full_data)))
  
  #Remove numerals form column names
  names(mean_std) <- gsub("^[0-9]+ ", "", names(mean_std))
  mean_std
}

#Download data
if(!file.exists("UCI HAR Dataset")){
  dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(dataURL, "Galaxy_S_RAW.zip")
  DLdate <- Sys.Date()

  #Unzip files
  unzip("Galaxy_S_RAW.zip")
}

#Assemble/format data
means_stds <- Assemble()

#Summarize measures by subject
subj_sum <- means_stds %>% group_by(subject, activity) %>%
  summarize_all(mean)

#Remove numerals from column names
names(subj_sum) <- gsub("^[0-9]+ ", "", names(subj_sum))

#Specify that columns are means
names(subj_sum)[3:68] <- paste("mean of", names(subj_sum)[3:68])

#Save summary
summary.path <- "Getting-and-Cleaning-Data-Project/mean_sd_feature_summary.txt"
write.table(subj_sum, file = summary.path, row.names = FALSE)
