#CodeBook: Getting and Cleaning Data Project

#Dataset
The dataset used is the "Human Activity Recognition Using Smartphones Dataset"
[1].  Data was collected in 2012 form the Samsung Galaxy S accelerometer.  
Thirty subjects each performed 6 activities.  Five hundred sixty-one features
were tracked. The dataset consistesThe data has been divided to allow for 
cross-validation of feature detection algorythm using machine learining.  The 
training training dataset contains 7352 observations of 6 activities recorded in 
21 subjects.  The test data contains 2947 observations of 6 activites recored in
9 subjects. of the following variables used forfeature detection of activities 
(adapted from [2]).

##Variable Descriptions
- subject
- activity
- columns 3:563 are features

###Note
For the following signals the prefix "t" indicates a time domain feature, 
prefix "f indicates a frequencey domain feature.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of descriptive statistics that were estimated for each signal are: 

- mean(): Mean value
- std(): Standard deviation
- mad(): Median absolute deviation 
- max(): Largest value in array
- min(): Smallest value in array
- sma(): Signal magnitude area
- energy(): Energy measure. Sum of the squares divided by the number of values 
- iqr(): Interquartile range 
- entropy(): Signal entropy
- arCoeff(): Autorregresion coefficients with Burg order equal to 4
- correlation(): correlation coefficient between two signals
- maxInds(): index of the frequency component with largest magnitude.
- meanFreq(): Weighted average of the frequency components to obtain a mean 
  frequency
- skewness(): skewness of the frequency domain signal 
- kurtosis(): kurtosis of the frequency domain signal
- bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of 
  each window
- angle(): Angle between to vectors

Additional vectors obtained by averaging the signals in a signal window sample. 
These are used on the angle() variable:

- gravityMean
- tBodyAccMean
- tBodyAccJerkMean
- tBodyGyroMean
- tBodyGyroJerkMean

#Data Summary
The run_analysis.R script was run to assemble and summerize the data.

- Load required packages
- Define Assemble() function 
- Download data
- Unzip files
- Assemble and label data selecting only mean() and std() measures
- Calculate group means for the interaction of subject and activity
- Remove numerals from column names of summarized data
- Specify that columns of summarized data are means
- Save summarized data as .txt file

#List of 68 varialbes produced by Assemble()

"subject"
- Factor: levels 1-30
"activity"
- Factor: levels WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
  STANDING, LAYING
"1 tBodyAcc-mean()-X"
"2 tBodyAcc-mean()-Y"
"3 tBodyAcc-mean()-Z"
"4 tBodyAcc-std()-X"
"5 tBodyAcc-std()-Y"
"6 tBodyAcc-std()-Z"
"41 tGravityAcc-mean()-X"
"42 tGravityAcc-mean()-Y"
"43 tGravityAcc-mean()-Z"
"44 tGravityAcc-std()-X"
"45 tGravityAcc-std()-Y"
"46 tGravityAcc-std()-Z"
"81 tBodyAccJerk-mean()-X"
"82 tBodyAccJerk-mean()-Y"
"83 tBodyAccJerk-mean()-Z"
"84 tBodyAccJerk-std()-X"
"85 tBodyAccJerk-std()-Y"
"86 tBodyAccJerk-std()-Z"
"121 tBodyGyro-mean()-X"
"122 tBodyGyro-mean()-Y"
"123 tBodyGyro-mean()-Z"
"124 tBodyGyro-std()-X"
"125 tBodyGyro-std()-Y"
"126 tBodyGyro-std()-Z"
"161 tBodyGyroJerk-mean()-X"
"162 tBodyGyroJerk-mean()-Y"
"163 tBodyGyroJerk-mean()-Z"
"164 tBodyGyroJerk-std()-X"
"165 tBodyGyroJerk-std()-Y"
"166 tBodyGyroJerk-std()-Z"
"201 tBodyAccMag-mean()"
"202 tBodyAccMag-std()"
"214 tGravityAccMag-mean()"
"215 tGravityAccMag-std()"
"227 tBodyAccJerkMag-mean()"
"228 tBodyAccJerkMag-std()"
"240 tBodyGyroMag-mean()"
"241 tBodyGyroMag-std()"
"253 tBodyGyroJerkMag-mean()"
"254 tBodyGyroJerkMag-std()"
"266 fBodyAcc-mean()-X"
"267 fBodyAcc-mean()-Y"
"268 fBodyAcc-mean()-Z"
"269 fBodyAcc-std()-X"
"270 fBodyAcc-std()-Y"
"271 fBodyAcc-std()-Z"
"345 fBodyAccJerk-mean()-X"
"346 fBodyAccJerk-mean()-Y"
"347 fBodyAccJerk-mean()-Z"
"348 fBodyAccJerk-std()-X"
"349 fBodyAccJerk-std()-Y"
"350 fBodyAccJerk-std()-Z"
"424 fBodyGyro-mean()-X"
"425 fBodyGyro-mean()-Y"
"426 fBodyGyro-mean()-Z"
"427 fBodyGyro-std()-X"
"428 fBodyGyro-std()-Y"
"429 fBodyGyro-std()-Z"
"503 fBodyAccMag-mean()"
"504 fBodyAccMag-std()"
"516 fBodyBodyAccJerkMag-mean()"
"517 fBodyBodyAccJerkMag-std()"
"529 fBodyBodyGyroMag-mean()"
"530 fBodyBodyGyroMag-std()"
"542 fBodyBodyGyroJerkMag-mean()"
"543 fBodyBodyGyroJerkMag-std()"

#Complete list of summary variables
"subject"
- Factor: levels 1-30
"activity"
- Factor: levels WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, 
  STANDING, LAYING
"mean of  tBodyAcc-mean()-X"
"mean of  tBodyAcc-mean()-Y"
"mean of  tBodyAcc-mean()-Z"
"mean of  tBodyAcc-std()-X"
"mean of  tBodyAcc-std()-Y"
"mean of  tBodyAcc-std()-Z"
"mean of  tGravityAcc-mean()-X"
"mean of  tGravityAcc-mean()-Y"
"mean of  tGravityAcc-mean()-Z"
"mean of  tGravityAcc-std()-X"
"mean of  tGravityAcc-std()-Y"
"mean of  tGravityAcc-std()-Z"
"mean of  tBodyAccJerk-mean()-X"
"mean of  tBodyAccJerk-mean()-Y"
"mean of  tBodyAccJerk-mean()-Z"
"mean of  tBodyAccJerk-std()-X"
"mean of  tBodyAccJerk-std()-Y"
"mean of  tBodyAccJerk-std()-Z"
"mean of  tBodyGyro-mean()-X"
"mean of  tBodyGyro-mean()-Y"
"mean of  tBodyGyro-mean()-Z"
"mean of  tBodyGyro-std()-X"
"mean of  tBodyGyro-std()-Y"
"mean of  tBodyGyro-std()-Z"
"mean of  tBodyGyroJerk-mean()-X"
"mean of  tBodyGyroJerk-mean()-Y"
"mean of  tBodyGyroJerk-mean()-Z"
"mean of  tBodyGyroJerk-std()-X"
"mean of  tBodyGyroJerk-std()-Y"
"mean of  tBodyGyroJerk-std()-Z"
"mean of  tBodyAccMag-mean()"
"mean of  tBodyAccMag-std()"
"mean of  tGravityAccMag-mean()"
"mean of  tGravityAccMag-std()"
"mean of  tBodyAccJerkMag-mean()"
"mean of  tBodyAccJerkMag-std()"
"mean of  tBodyGyroMag-mean()"
"mean of  tBodyGyroMag-std()"
"mean of  tBodyGyroJerkMag-mean()"
"mean of  tBodyGyroJerkMag-std()"
"mean of  fBodyAcc-mean()-X"
"mean of  fBodyAcc-mean()-Y"
"mean of  fBodyAcc-mean()-Z"
"mean of  fBodyAcc-std()-X"
"mean of  fBodyAcc-std()-Y"
"mean of  fBodyAcc-std()-Z"
"mean of  fBodyAccJerk-mean()-X"
"mean of  fBodyAccJerk-mean()-Y"
"mean of  fBodyAccJerk-mean()-Z"
"mean of  fBodyAccJerk-std()-X"
"mean of  fBodyAccJerk-std()-Y"
"mean of  fBodyAccJerk-std()-Z"
"mean of  fBodyGyro-mean()-X"
"mean of  fBodyGyro-mean()-Y"
"mean of  fBodyGyro-mean()-Z"
"mean of  fBodyGyro-std()-X"
"mean of  fBodyGyro-std()-Y"
"mean of  fBodyGyro-std()-Z"
"mean of  fBodyAccMag-mean()"
"mean of  fBodyAccMag-std()"
"mean of  fBodyBodyAccJerkMag-mean()"
"mean of  fBodyBodyAccJerkMag-std()"
"mean of  fBodyBodyGyroMag-mean()"
"mean of  fBodyBodyGyroMag-std()"
"mean of  fBodyBodyGyroJerkMag-mean()"
"mean of  fBodyBodyGyroJerkMag-std()"

