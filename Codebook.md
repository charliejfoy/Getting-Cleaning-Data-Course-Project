Written by: Charlie Foy
Date: November 22, 2015

#Project Description

The Coursera course titled Getting & Cleaning Data course project required a solution to complete an analysis on data collected from accelerometers from Samsung Galaxy S smartphones.  More specifically, the solution was to create a tidy data set of the averages of each variable for each activity and each subject.

#Study design and data processing

##Collection of the raw data

The data was collected as part of an experiment on Human Activity Recognition.  The experiment was performed by 30 peoples, each completing a number of activities while wearing a smartphone (Samsung Galaxy S II) on their waist.  The data sample, a collection of 3-axial linear acceleration & 3-axial angular velocity, was recorded by the device's accelerometer and gyroscope.

The original data set is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Notes on the original (raw) data

Each of the variables are normalized and bounded within [-1,1].

##Creating the tidy datafile

1. Download the data set from the URL provided above.
2. Place the following files from the data set into the working directory:
	1. activity_labels.txt
	2. features.txt
	3. subject_test.txt
	4. subject_train.txt
	5. X_test.txt
	6. X_train.txt
	7. y_test.txt
	8. y_train.txt
3. Source the file run_analysis.R
4. Run the script by calling the run_analysis() function. The resulting output is the creation of the tidy data set.

##Cleaning of the data

Once the Test and Train data sets are merged together, we have 10,299 observations of 561 variables.  

In order to clean the data, we first remove any unwanted variables, that is, those that don't measure mean and standard deviation information.  We are left with 66 variables, as well as the subject and activity variables.

We then transform the data into a long-form data set, where the variables are re-structured into observations (rows) by Subject and Acitivity, with the values as the fourth variable.

Lastly, we aggregate the data by calculating the mean of each variable by Subject and Activity.  We are left with a tidy data set of 180 observations of 68 variables.  It follows the principles outlined in Hadley Wickham's Tidy Data paper.

For more detailed information, please see the README.md file, here:
https://github.com/charliejfoy/Getting-Cleaning-Data-Course-Project/blob/master/README.md



##Description of the variables in the Tidy Data Set.txt file

As noted above, the Tidy Data Set contains 180 observations (one for each combination of Subject and Activity) of 68 variables.  The 66 variables are the calculated means of that variable.

Observations about the variable naming convention:
* t/f Prefix - represent signals in the TIME domain or the FREQUENCY domain.
* Body/Gravity - Body represents the portion of the accelerometer signal by removing the known GRAVITY acceleration from the total acceleration signal.
* Signal source:
	* Acc - Accelerometer
	* Gyro - Gyroscope
* Function - mean/std - mean value of the observation or the standard deviation value of the observation
* X/Y/Z Suffix - Individual axial value of the signal.

###Variable List:
Variable Name: SubjectID
Description: Identifies the volunteer completing the activity.
Class: Integer
Values: [1,30]

Variable Name: ActivityID
Description: Identifies the type of activity being done.
Class: Factor
Values: [LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS]

Variable Name: tBodyAcc-mean-X
Description: MEAN of mean value of the X-axial acceleration of the body 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-mean-Y
Description: MEAN of mean value of the Y-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-mean-Z
Description: MEAN of mean value of the Z-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-std-X
Description: MEAN of standard deviation of the X-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-std-Y
Description: MEAN of standard deviation of the Y-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-std-Z
Description: MEAN of standard deviation of the Z-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-mean-X
Description: MEAN of mean value of the X-axial acceleration of gravity
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-mean-Y
Description: MEAN of mean value of the Y-axial acceleration of gravity
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-mean-Z
Description: MEAN of mean value of the Z-axial acceleration of gravity
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-std-X
Description: MEAN of standard deviation of the X-axial acceleration of gravity
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-std-Y
Description: MEAN of standard deviation of the Y-axial acceleration of gravity
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-std-Z
Description: MEAN of standard deviation of the Z-axial acceleration of gravity
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-mean-X
Description: MEAN of mean X-axial Jerk signal, derived from acceleration in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-mean-Y
Description: MEAN of mean Y-axial Jerk signal, derived from acceleration in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-mean-Z
Description: MEAN of mean Z-axial Jerk signal, derived from acceleration in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-std-X
Description: MEAN of standard deviation of the X-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-std-Y
Description: MEAN of standard deviation of the Y-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-std-Z
Description: MEAN of standard deviation of the Z-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyGyro-mean-X
Description: MEAN of mean values of the X-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-mean-Y
Description: MEAN of mean values of the Y-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-mean-Z
Description: MEAN of mean values of the Z-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-std-X
Description: MEAN of Standard deviation of the X-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-std-Y
Description: MEAN of Standard deviation of the Y-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-std-Z
Description: MEAN of Standard deviation of the Z-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-mean-X
Description: MEAN of mean X-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-mean-Y
Description: MEAN of mean Y-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-mean-Z
Description: MEAN of mean Z-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-std-X
Description: MEAN of standard deviation of the X-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-std-Y
Description: MEAN of standard deviation of the Y-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-std-Z
Description: MEAN of standard deviation of the Z-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyAccMag-mean
Description: MEAN of mean value of the magnitude of the 3-axial accelerometer signals derived by Euclidian norm of the body
Class: Number 
Value range: [-1,1]

Variable Name: tBodyAccMag-std
Description: MEAN of standard deviation of the magnitude of the 3-axial accelerometer signals derived by Euclidian norm of the body
Class: Number 
Value range: [-1,1]

Variable Name: tGravityAccMag-mean
Description: MEAN of mean value of the magnitude of the 3-axial accelerometer signals derived by Euclidian norm of gravity
Class: Number 
Value range: [-1,1]

Variable Name: tGravityAccMag-std
Description: MEAN of standard deviation of the magnitude of the 3-axial accelerometer signals derived by Euclidian norm of gravity
Class: Number 
Value range: [-1,1]

Variable Name: tBodyAccJerkMag-mean
Description: MEAN of mean values of the magnitude of the 3-axial accelerometer Jerk signals of the body
Class: Number 
Value range: [-1,1]

Variable Name: tBodyAccJerkMag-std
Description: MEAN of standard deviation of the magnitude of the 3-axial accelerometer Jerk signals of the body
Class: Number 
Value range: [-1,1]

Variable Name: tBodyGyroMag-mean
Description: MEAN of mean value of the magnitude of the 3-axial gyroscope signals derived by Euclidian norm of the body
Class: Number 
Value range: [-1,1]

Variable Name: tBodyGyroMag-std
Description: MEAN of standard deviation of the magnitude of the 3-axial gyroscope signals derived by Euclidian norm of the body
Class: Number 
Value range: [-1,1]

Variable Name: tBodyGyroJerkMag-mean
Description: MEAN of mean values of the magnitude of the 3-axial gyroscope Jerk signals of the body
Class: Number
Value range: [-1,1]

Variable Name: tBodyGyroJerkMag-std
Description: MEAN of standard deviation of the magnitude of the 3-axial gyroscope Jerk signals of the body
Class: Number 
Value range: [-1,1]

Variable Name: fBodyAcc-mean-X
Description: MEAN of Fast Fourier Transform mean value of the X-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-mean-Y
Description: MEAN of Fast Fourier Transform mean value of the Y-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-mean-Z
Description: MEAN of Fast Fourier Transform mean value of the Z-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-std-X
Description: MEAN of Fast Fourier Transform standard deviation of the X-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-std-Y
Description: MEAN of Fast Fourier Transform standard deviation of the Y-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-std-Z
Description: MEAN of Fast Fourier Transform standard deviation of the Z-axial acceleration of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-mean-X
Description: MEAN of Fast Fourier Transform mean X-axial Jerk signal, derived from acceleration in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-mean-Y
Description: MEAN of Fast Fourier Transform mean Y-axial Jerk signal, derived from acceleration in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-mean-Z
Description: MEAN of Fast Fourier Transform mean Z-axial Jerk signal, derived from acceleration in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-std-X
Description: MEAN of Fast Fourier Transform standard deviation of the X-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-std-Y
Description: MEAN of Fast Fourier Transform standard deviation of the Y-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-std-Z
Description: MEAN of Fast Fourier Transform standard deviation of the Z-axial Jerk signal, derived from angular velocity in time, of the body
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyGyro-mean-X
Description: MEAN of Fast Fourier Transform mean values of the X-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-mean-Y
Description: MEAN of Fast Fourier Transform mean values of the Y-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-mean-Z
Description: MEAN of Fast Fourier Transform mean values of the Z-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-std-X
Description: MEAN of Fast Fourier Transform Standard deviation of the X-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-std-Y
Description: MEAN of Fast Fourier Transform Standard deviation of the Y-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-std-Z
Description: MEAN of Fast Fourier Transform Standard deviation of the Z-axial angular velocity of the body
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyAccMag-mean
Description: MEAN of Fast Fourier Transform mean values of the magintude of the 3-axial accelerometer of the body
Class: Number 
Value range: [-1,1]

Variable Name: fBodyAccMag-std
Description: MEAN of Fast Fourier Transform standard deviation of the magintude of the 3-axial accelerometer of the body
Class: Number
Value range: [-1,1]

Variable Name: fBodyAccJerkMag-mean
Description: MEAN of Fast Fourier Transform mean values of the magintude of the Jerk Signal of the 3-axial accelerometer of the body
Class: Number 
Value range: [-1,1]

Variable Name: fBodyAccJerkMag-std
Description: MEAN of Fast Fourier Transform standard deviation of the magintude of the Jerk Signal of the 3-axial accelerometer of the body
Class: Number 
Value range: [-1,1]

Variable Name: fBodyGyroMag-mean
Description: MEAN of Fast Fourier Transform mean values of the magintude of the 3-axial gyroscope signal of the body
Class: Number 
Value range: [-1,1]

Variable Name: fBodyGyroMag-std
Description: MEAN of Fast Fourier Transform standard deviation of the magintude of the 3-axial gyroscope signal of the body
Class: Number 
Value range: [-1,1]

Variable Name: fBodyGyroJerkMag-mean
Description: MEAN of Fast Fourier Transform mean values of the magintude of the Jerk Signal of the 3-axial gyroscope signal of the body
Class: Number 
Value range: [-1,1]

Variable Name: fBodyGyroJerkMag-std
Description: MEAN of Fast Fourier Transform standard derivation of the magintude of the Jerk Signal of the 3-axial gyroscope signal of the body
Class: Number 
Value range: [-1,1]




##Sources

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013
