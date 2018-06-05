## Small Project Template

A template for how to organize a very simple project where only a few scripts are needed to get the job done. Much of the layout was taken from the following:

* Guide to small project organization: https://nicercode.github.io/blog/2013-04-05-projects/
* Guide to reproducible research using R packages: https://peerj.com/preprints/3192/



## Project Directory Guide

__data__ stores the raw data and the clean data. The raw data should never be edited - only read. Analysis starts with the clean data. Questions: Should this folder be split into /data-raw and /data or is one folder fine? Where does the metadata for the raw data file get stored? Use a readme style .txt document?

__reports__ contains the working and final project reports. Perhaps one .Rmd file and one .docx file.

__output__ contains saved plots, tables, simulation output, or anything else that is cumbersome to create and is used in the final report. Anyone should be able to regenerate anything in this folder using the code in the scripts folder. 

__scripts__ contains the code organized by purpose. If they need to be run sequentially, number the files, e.g., 01_cleaning, 02_analysis etc. For organizational purposes it may be best to have one functions.R file dedicated to defining all custom functions, and then source that file during cleaning and analysis. If more than a few custom functions are needed, consider writing a package.

