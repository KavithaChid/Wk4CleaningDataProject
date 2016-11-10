# Wk4CleaningDataProject
Cleaning Data Project
The files included are :

1) run_analysis.R - The r script that will clean the data to produce the tidy data output.

2) codebook.md - text file containing an overview of how the data was cleaned and field level description of the final 		 output file.
3) codebook.md.xlsx - An excel file format for code.md for better/easier viewing

4) accelerationData_sample.csv - a sample output from run_analysis

5) readme.txt - text file to describe the instructions to execute and list files accompanying the R script.


To execute R script:

1. Please ensure you have unzipped the source data required for this assignment.

2. In R Studio, open the run_analysis.R script and click 'source to save' and save button. This will load the source code to memory.

3. at the  > prompt run_analysis(<give the directory path within double quotes>) and click enter.for eg. I have unzipped the source data files in the following directory c:\CleaningData\week4\Project\Dataset 

to execute the program the command would be as below.

run_analysis("C:\\CleaningData\\week4\\Project\\Dataset")

4. The given path is set as the working directory and the files are read from Dataset and its sub-folders. So please don't change the sub-folders.

5. The script will complete and once prompt is returned, please check the working directory path. A new csv file accelerationData.csv can be seen. This will have the tidy data output.


Tidy data claim:

1. The column headers are all lower case and with only 1 hyphen to highlight the X Y and Z variable.
2. Column headers are descriptive.
3. The activity code has been replaced with description for tidying purpose for easy interpretation to viewers.
4. Necessary field list and descriptions are provided along with the data in codebook.md file
4. A readme script is provided for viewer understanding of how to invoke and generate the data set.
