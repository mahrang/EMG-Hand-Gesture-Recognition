Random Forest Classification of Hand Gestures
By Mahrang Saeed & Shifabanu Shaikh

Go to https://github.com/a-moin/flexemg/tree/master/data
Download the raw training and test datasets for Subject 1 Session 1 from folders 
001-Session1Train and 001-Session1Test, respectively.  Each folder contains datasets for 10 trials.

Open Matlab folder.  Place contents of Matlab folder in your Matlab work directory.
Open Matlab.
Open genfilter.m and run it.  This will generate your filter coefficients and save them in prefilter.mat.

Repeat the following for each trial dataset to create your preprocessed dataset:
Open Preprocessing.m and run it.
The variable window3 contains the preprocessed signals from the 64 electrodes.  This will be used as your X variable in the Python code.
The variable gestlabel_column contains the labels associated with the 5 different hand gestures.  This will be your Y variable in the Python code.
Copy and paste the 64 columns from window3 into an Excel workbook.
Copy and paste the gestlabel_column values into the 65th column of the Excel workbook (column BM).
Save Excel file as Subject 1 Session 1 Train Trial 1.xlsx.  Repeat for other trial datasets.
When using test datasets, replace Trai with Test in Excel file name.
Place all Excel files in your Jupyter Notebook work directory.

Open Python folder.  Contents of this folder contain the Jupyter Notebook files written in Python.  These notebooks contain the code and results obtained by using 1-10 trials from training set and all 10 test trials to obtain a test accuracy.  In order for the codes to run, you must have completed the previous step to create the preprocessed dataset.
