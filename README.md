# Getting and cleaning data - Course Project 2

This repository contains the code for the 2nd course project of the
[Getting and Cleaning Data](https://class.coursera.org/getdata-007) course on
Coursera.

The goal of the course project is to prepare tidy data with a R script that can
be used later for analysis. 

# How to run the script

Souce the script `run_analysis.R`:

    source("run_analysus.R")

Run the function `tidy_data` with the path to the raw data as argument and optional output filename:

    tbl <- tidy_data("path/to/raw/data", output_filename="tidy_dataset.txt")

The tidy dataset 
* is returned in a local data frame
* will be saved in a text file with the name specified by `output_filename`. 

## Requirements

* [dplyr](https://github.com/hadley/dplyr)
