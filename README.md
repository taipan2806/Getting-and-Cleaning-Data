Purpose of this file
====================
Purpose of this file is to provide basic information about the project, its requirements and its reproducibility.
Project
=======
This project is the course project of Coursera's course "Getting and Cleaning Data", started on Aug. 3rd 2015.
Purpose
-------
Purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
Goal
----
Goal is to prepare tidy data that can be used for later analysis.
Deliverables
------------
Tidy data set<br>
Link to Github repository with run_analysis.R<br>
CodeBook.md<br>
README.md (this file)
Data
----
Data can be downloaded from <br>https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip<br>
Requirements
============
To run script run_analysis.R, R-Studio is required including installed package plyr.
run_analysis.R
==============
This script produces requested file is 6 steps:<br>
1. Merges training and test sets to 1 data set<br>
2. Subsets measurements to mean and standard deviation data<br>
3. Replaces activity id to name<br>
4. Renames variable names<br>
5. Stores aggregates data in TidyData.txt<br>
6. Checks TidyData.txt's completeness
Reproducibility
===============
To run the script, do following steps:<br>
1. Copy data in R-Studio's work directory<br>
2. In R-Studio load script run_analysis.R<br>
3. Run script run_analysis.R<br>
4. Check quality checks' result



