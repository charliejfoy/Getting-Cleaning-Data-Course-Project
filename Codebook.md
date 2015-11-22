Written by: Charlie Foy
Date: November 22, 2015

#Project Description

The Coursera course titled Getting & Cleaning Data course project required a solution to complete an analysis on data collected from accelerometers from Samsung Galaxy S smartphones.  More specifically, the solution was to create a tidy data set of the averages of each variable for each activity and each subject.

#Study design and data processing

##Collection of the raw data

The data was collected as part of an experiment on Human Activity Recognition.  The experiment was performed by 30 peoples, each completing a number of activities while wearing a smartphone (Samsung Galaxy S II) on their waist.  The data sample, a collection of 3-axial linear acceleration & 3-axial angular velocity, was recorded by the device's accelerometer and gyroscope.

The original data set is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

#Notes on the original (raw) data

Each of the variables are normalized and bounded within [-1,1].

Creating the tidy datafile

Guide to create the tidy data file

Description on how to create the tidy data file (1. download the data, ...)/

Cleaning of the data

Short, high-level description of what the cleaning script does. link to the readme document that describes the code in greater detail

Description of the variables in the tiny_data.txt file

General description of the file including:

Dimensions of the dataset
Summary of the data
Variables present in the dataset
(you can easily use Rcode for this, just load the dataset and provide the information directly form the tidy data file)

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