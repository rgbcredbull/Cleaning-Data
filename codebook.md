Used variables:

Storage Operations: 

testData, testColumns, and testSubjects encompass three seperate test segment files including X_test.txt, y_test.txt, and subject_tests.txt

trainData, trainColumns, and trainSubjects encompass three seperate train segment files including X_trains.txt, y_test.txt, and sbuject_train.txt

testMaster and trainMaster house collective data of both test and train sets.
comboPlatter houses combined test and train data sets.

activityNames houses activity names including: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, and LAYING.

columnHeaders includes all measured variable titles (see original variables from base datasets below.

tidyData houses column averages of comboPlatter broken out by subject and activity.

Operations:

Storage, column bind all data into testMaster and trainMaster.

Row bind all data into comboPlatter.

Break out character assignments of activity_labels.txt for use in labelling comboPlatter

Add subject and activity columns comboPlatter.

Extract column names and derive means through factorization and dcast, respectively.

Write data to tidyAverages.txt.


Original variables from base datasets: 

tBodyAcc-XYZ

tGravityAcc-XYZ

tBodyAccJerk-XYZ

tBodyGyro-XYZ

tBodyGyroJerk-XYZ

tBodyAccMag

tGravityAccMag

tBodyAccJerkMag

tBodyGyroMag

tBodyGyroJerkMag

fBodyAcc-XYZ

fBodyAccJerk-XYZ

fBodyGyro-XYZ

fBodyAccMag

fBodyAccJerkMag

fBodyGyroMag

fBodyGyroJerkMag

mean(): Mean value

std(): Standard deviation

mad(): Median absolute deviation 

max(): Largest value in array

min(): Smallest value in array

sma(): Signal magnitude area

energy(): Energy measure. Sum of the squares divided by the number of values. 

iqr(): Interquartile range 

entropy(): Signal entropy

arCoeff(): Autorregresion coefficients with Burg order equal to 4

correlation(): correlation coefficient between two signals

maxInds(): index of the frequency component with largest magnitude

meanFreq(): Weighted average of the frequency components to obtain a mean frequency

skewness(): skewness of the frequency domain signal 

kurtosis(): kurtosis of the frequency domain signal 

bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.

angle(): Angle between to vectors.

gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean
