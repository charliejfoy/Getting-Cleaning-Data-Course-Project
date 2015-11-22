# Getting-Cleaning-Data-Course-Project
Repository to store analysis syntax and test data for Course Project.

##Repo Contents:
1. README.md
2. run_analysis.R
3. CODEBOOK.md
4. Assignment Step 5.txt

##Background
The Coursera course titled Getting & Cleaning Data course project required a solution to complete an analysis on data collected from accelerometers from Samsung Galaxy S smartphones.  More specifically, the solution was to create a tidy data set of the averages of each variable for each activity and each subject.

Data was recorded for 30 subjects, each performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) with their smartphone on the waist.

##Usage Instructions:
1. Ensure the following files are in the Working Directory:
	1. activity_labels.txt
	2. features.txt
	3. subject_test.txt
	4. subject_train.txt
	5. X_test.txt
	6. X_train.txt
	7. y_test.txt
	8. y_train.txt
2. Place run_analysis.R in the Working Directory.
3. In the R Console, type source("run_analysis.R")
4. Type "run_analysis()", without the quotations.

##Assumptions
The only assumption I made after I quick review of the data information was that there were no NA values.

##Algorithm
*Read in FEATURES (this is the variable list for our main data)
*Read in each of the TEST files (none of them have headers)
	*the subject file contains only numeric values, a single column identifying the subject.
	*the activity file contains only numeric values, a single column identifying the activity.
	*the data file contains only numeric values, 561 columns.
	*Each file has the same number of rows
*Merge the test subject, test activity and test data together.
*Rename the variables to more appropriate names, specifically, those found in the FEATURES data set.
**Read in each of the TRAIN files (none of them have headers)
	*the subject file contains only numeric values, a single column identifying the subject.
	*the activity file contains only numeric values, a single column identifying the activity.
	*the data file contains only numeric values, 561 columns.
	*Each file has the same number of rows
*Merge the train subject, train activity and train data together.
*Rename the variables to more appropriate names, specifically, those found in the FEATURES data set.
