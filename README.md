# Getting-Cleaning-Data-Course-Project
Repository to store analysis syntax and test data for Course Project.

##Repo Contents:
1. README.md
2. run_analysis.R
3. Tidy Data Set.txt
4. CODEBOOK.md

##Background
The Coursera course titled Getting & Cleaning Data course project required a solution to complete an analysis on data collected from accelerometers from Samsung Galaxy S smartphones.  More specifically, the solution was to create a tidy data set of the averages of each variable for each activity and each subject.

Data was recorded for 30 subjects, each performing 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) with their smartphone on the waist.

In his paper titled Tidy Data for the Journal of Statistical Science (Vol VV, Issue II), RStudio's Hadley Wickham discusses 3 principles he uses to define tidy data:
1. Each variable forms a column;
2. Each observation forms a row;
3. Each type of observational unit forms a table.

It is a way to simplify the data sets.

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
* Read in FEATURES (this is the variable list for our main data)
* Read in each of the TEST files (none of them have headers)
	* the subject file contains only numeric values, a single column identifying the subject.
	* the activity file contains only numeric values, a single column identifying the activity.
	* the data file contains only numeric values, 561 columns.
	* Each file has the same number of rows
* Merge the test subject, test activity and test data together.
* Rename the variables to more appropriate names, specifically, those found in the FEATURES data set.
* Read in each of the TRAIN files (none of them have headers)
	* the subject file contains only numeric values, a single column identifying the subject.
	* the activity file contains only numeric values, a single column identifying the activity.
	* the data file contains only numeric values, 561 columns.
	* Each file has the same number of rows
* Merge the train subject, train activity and train data together.
* Rename the variables to more appropriate names, specifically, those found in the FEATURES data set.
* Merge the TEST data and TRAIN data together.  This is much easier since the variables are identical in the 2 sets (after renaming based on FEATURES).
* Retain only variables that have MEAN() and STD() (Standard Deviation) data. Use a regular expression to get a logical vector of columns matching the desired criteria and subset.
* Read in the activity labels (the numeric values in the ACTIVITY files have descriptive labels).
* Left join (merge) the full data with the activity labels, by the numeric Activity Identifier.
* Replace the numeric activity values with their labels.
* Melt the data to a long data set.
* Reshape the data, aggregating the MEAN values of the variables by SUBJECT and ACTIVITY. This ultimately creates the tidy data set required.

The resulting output file (Assignment Step 5.txt) follows the tidy data principles outlined, with each column containing only variable, each row has one observation of a subject and an activity, and the table is a unique observational unit.  Each value represents the mean of all observations of that variable for each activity completed by each subject.

##The Codebook
Also known as the data dictionary, the Codebook describes the variables and values found in the tidy data, their structure, value limitations (if any) & units.