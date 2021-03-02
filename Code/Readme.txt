{\rtf1\ansi\ansicpg1252\cocoartf1404\cocoasubrtf470
{\fonttbl\f0\froman\fcharset0 TimesNewRomanPSMT;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh9800\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\b\fs28 \cf0 \ul \ulc0 Random Forest Classification of Hand Gestures
\b0\fs24 \ulnone \
By Mahrang Saeed & Shifabanu Shaikh\
\
Go to {\field{\*\fldinst{HYPERLINK "https://github.com/a-moin/flexemg/tree/master/data"}}{\fldrslt https://github.com/a-moin/flexemg/tree/master/data}}\
Download the raw training and test datasets for Subject 1 Session 1 from folders \'93\expnd0\expndtw0\kerning0
001-Session1Train\'94 and \'93001-Session1Test\'94, respectively.  Each folder contains datasets for 10 trials.\
\
Open \'93Code\'94 folder inside the project folder.  Open \'93Matlab\'94 folder.  Place contents of Matlab folder in your Matlab work directory.\
Open Matlab. \
\kerning1\expnd0\expndtw0 Open \'93genfilter.m\'94 and run it.  This will generate your filter coefficients and save them in \'93prefilter.mat\'94.\expnd0\expndtw0\kerning0
\
\
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0
\cf0 \ul Repeat the following for each trial dataset to create your preprocessed dataset:\kerning1\expnd0\expndtw0 \ulnone \
Open trial 1 of the training dataset in Matlab.\
Open \'93Preprocessing.m\'94 and run it.  \
The variable \'93window3\'94 contains the preprocessed signals from the 64 electrodes.  This will be used as your X variable in the Python code.  \
The variable \'93gestlabel_column\'94 contains the labels associated with the 5 different hand gestures.  This will be your Y variable in the Python code.\
Copy and paste the 64 columns from \'93window3\'94 into an Excel workbook.  \
Copy and paste the \'93gestlabel_column\'94 values into the 65th column of the Excel workbook (column BM).  \
Save Excel file as \'93Subject 1 Session 1 Train Trial 1.xlsx\'94.  Repeat for other trial datasets.  \
When using test datasets, replace \'93Train\'94 with \'93Test\'94 in Excel file name.\
Place all Excel files in your Jupyter Notebook work directory.\
\
\expnd0\expndtw0\kerning0
\ul Jupyter Notebook:\ulnone \
Open \'93Code\'94 folder.  Open \'93Python\'94 folder.  Contents of this folder contain the Jupyter Notebook files written in Python.  These notebooks contain the code and results obtained by using 1-10 trials from training set and all 10 test trials to obtain a test accuracy.  In order for the codes to run, you must have completed the previous step to create the preprocessed dataset. }