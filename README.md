# AncBowl_LakeEvals

A template for how to organize a very simple project. For large projects an R package is probably more appropriate.

* Guide to simple layout above: https://nicercode.github.io/blog/2013-04-05-projects/
* Guide to R package organization: http://www.carlboettiger.info/2012/05/06/research-workflow.html



## Files Guide

__data__ stores the raw data and the clean data. The raw data should never be edited - only read.

__doc__ contains the working and final project reports

__output__ contains figures and any output that is cumbersome to create and used in the report i.e. simulation data/results

__scripts__ contains the code organized by purpose. If they need to be run sequentially, number the files i.e. 01_cleaning, 02_analysis ...
            For organizational purposes it may be necessary to have one .R file that defines all functions, and then simply source that file when cleaning and analysis.

