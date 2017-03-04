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

##Variables
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

##Files in the UCI HAR.zip Dataset
- activity_labesl.txt: Numeric codes and character sting labels for activites
- features.txt: The complete vector of all 561 features
- features_info.txt: A description of recorded features
- README.txt: Dataset readme
- test/: folder containing test subject data
- train/:folder containing training subject data

Train and test each contain
- subject_[train|test].txt: Vector of subject IDs
- X_[train|test].txt: Matrix of Features
- y_[train|test].text: Vector of numeric activity codes
- Intertial Signals/: Folder containing the 9 files. Files represent raw
  accelerometer, gyroscope, and sum of accelerometer and gyroscope accelerations
  in the x, y, and z spatial axes
