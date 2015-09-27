---
title: "README"
author: "John Lagonigro"
date: "September 26, 2015"
output: html_document
---

### DESCRIPTION
This projects gathers, cleans, and summarizes raw data captured from a Samsung Galaxy S during different exercise activities by multiple users over a period of time.

### FILE SUMMARY
1. **run_analysis.R**: This R file loads the data from and runs the required computations. It takes input from all files contained in a ZIP file here: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.  It outputs a file named *tidy_data.txt* that includes the average of all available variables fro each subject and activity.

2. **CodeBook.md**:  This R Markdown file contains the original data definition and details of collection, as well as added description for the computations in this project.

3. **tidy_data.txt**:  This is the file output by the *run_analysis.R* file.

### DETAILS: run_analysis.R
**REQUIREMENTS**:  The raw data files must be in the same working directory as this R script and have the same directory structures, filenames, and data format as contained in this zip file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The **run_analysis.R** file does the following:

* Loads "activity"" data from two separate directories and files, combines them, and sets a readable column header.
* Loads "subject"" data from two separate directories and files, combines them, and sets a readable column header.
* Loads "features" data two separate directories and files, combines them, and sets a readable column names from a separate file.
* Combines the "activity", "subject", and "features" tables above into one combined table.
* Extracts only "subject", "activity", and "features" columns with MEAN or STANDARD DEVIATION data.
* Changes the "activity" column fields from a number id to the text description.
* Makes all column names human readable by expanding abbreviations.
* Creates a new dataset for the cleaned average of each subject and activity.
* Exports the cleaned dataset as the *tidy_data.txt* file.