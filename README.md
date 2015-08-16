Purpose of this file
Purpose of this file is to provide basic information about the project, its requirements and its reproducibility.

Project

Purpose
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. 
Goal
The goal is to prepare tidy data that can be used for later analysis.
Deliverables
1. Tidy data set
2. Link to Github repository with run_analysis.R
3. CodeBook.md
4. README.md (this file)
Data
Data can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Software
To run the script run_analysis.R, R-Studio is required including installed package plyr.
run_analysis.R
This script produces requested file is 6 steps:
1. Merges training and test sets to 1 data set
2. Subsets measurements to mean and standard deviation data
3. Replaces activity id to name
4. Renames variable names
5. Stores aggregates data in TidyData.txt
6. Checks completeness of TidyData.txt

Reproducibility
1. Copy data in R-Studio's work directory.
2. In R-Studio load script run_analysis.R 
3. Run script run_analysis.R
4. Check quality checks' result



