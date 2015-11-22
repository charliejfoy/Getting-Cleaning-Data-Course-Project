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
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-mean-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-mean-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-std-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-std-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAcc-std-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-mean-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-mean-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-mean-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-std-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-std-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tGravityAcc-std-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-mean-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-mean-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-mean-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-std-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-std-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyAccJerk-std-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: tBodyGyro-mean-X
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-mean-Y
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-mean-Z
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-std-X
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-std-Y
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyro-std-Z
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-mean-X
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-mean-Y
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-mean-Z
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-std-X
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-std-Y
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyGyroJerk-std-Z
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: tBodyAccMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: tBodyAccMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]
Variable Name: tGravityAccMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]
Variable Name: tGravityAccMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: tBodyAccJerkMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: tBodyAccJerkMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: tBodyGyroMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: tBodyGyroMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: tBodyGyroJerkMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: tBodyGyroJerkMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyAcc-mean-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-mean-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-mean-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-std-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-std-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAcc-std-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-mean-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-mean-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-mean-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-std-X
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-std-Y
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyAccJerk-std-Z
Description: 
Class: Number
Unit of Measurement: Standard gravity units (g)
Value range: [-1,1]

Variable Name: fBodyGyro-mean-X
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-mean-Y
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]
Variable Name: fBodyGyro-mean-Z
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]
Variable Name: fBodyGyro-std-X
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-std-Y
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyGyro-std-Z
Description: 
Class: Number
Unit of Measurement: Angular Velocity (radians/second)
Value range: [-1,1]

Variable Name: fBodyAccMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyAccMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyAccJerkMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyAccJerkMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyGyroMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyGyroMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyGyroJerkMag-mean
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]

Variable Name: fBodyGyroJerkMag-std
Description: 
Class: Number
Unit of Measurement: 
Value range: [-1,1]









Variable 1 (repeat this section for all variables in the dataset)

Short description of what the variable describes.

Some information on the variable including:

Class of the variable
Unique values/levels of the variable
Unit of measurement (if no unit of measurement list this as well)
In case names follow some schema, describe how entries were constructed (for example time-body-gyroscope-z has 4 levels of descriptors. Describe these 4 levels).
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

Notes on variable 1:

If available, some additional notes on the variable not covered elsewehere. If no notes are present leave this section out.

Sources

Sources you used if any, otherise leave out.

Annex

If you used any code in the codebook that had the echo=FALSE attribute post this here (make sure you set the results parameter to 'hide' as you do not want the results to show again)