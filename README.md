# Getting-and-Cleaning-Data-Project
Coursera Data Science Specialization Getting and Cleaning Data Project

#Dataset
The dataset used is the "Human Activity Recognition Using Smartphones Dataset"
[1].  Data was collected in 2012 form the Samsung Galaxy S accelerometer.  
Thirty subjects each performed 6 activities, 561 individual feature were 
recorderd for each observation.  The dataset consistesThe data has 
been divided to allow for cross-validation of feature detectionalgorythm using 
machine learining.  The training training dataset contains 7352 observations of 
6 activities recorded in 21 subjects.  The test data contains 2947 observations
of 6 activites recored in 9 subjects. Subject IDs, activities and features are
saved as seperate text files without column headers.

#run_analysis.R Script
The run_analysis.R script downloads, assembles, and compututes the 
average of mean() and std() measures for each subject and activity in the 2012
Samsung Galaxy S accelerometer dataset. The resulting data is tidy with one row
per subject and one column per variable. 

##run_analysis.R performs the following operations
- Load required packages
- Define Assemble() function 
 + Assemble loads the individual components of the 
   dataset, merges the test and training data, labels the data columns, labels 
   the activities and selects the mean() and std() features
 + Args
  * path: The directory containing the downloaded data
 + Returns
  * The subject, activity and mean() and std() of measure variables in the data
- Download data
- Unzip files
- Assemble and label data
- Calculate group means for the interaction of subject and activity
- Remove numerals from column names of summarized data
- Specify that columns of summarized data are means
- Save summarized data as .txt file

#References
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 
Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 
Hardware-Friendly Support Vector Machine. International Workshop of Ambient 
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

