Given:		
Training and testing data were provided in separate files. The test subject id and activity for each set of data was also provided in separate files.		
		
Process Overview:		
The program extracts only the required columns from the two data sets and combined it with their respective subject and activity to make separate traning data set and testing data set.		
These in turn were combined to a single data set preseving their order.		
column headers were changed to lowercase and formatted to tidy data rules.		
The activity was given as a code of 1 -6 and these were replaced with their corresponding description.		
The final data set was then grouped by activity and subject. This data was then used to calculate the average value per subject per activity and written to the final output table accelerationdata.csv.		
Listed below are the column names and description of the final ouput.		
		
Field #	Column Names	Description
1	activity	activity performed by the tester. Code value was replaced with its corresponding description. A total of 6 unique activities can be found.
2	subject	tester unique id values range from 1 -30.
3	tbodyacc-meanx	 time domain body accelaration mean value- average value per tester per activity in  direction X
4	tbodyacc-meany	  time domain body accelaration mean value- average value per tester per activity in  direction Y
5	tbodyacc-meanz	  time domain body accelaration mean value- average value per tester per activity in  direction Z
6	tbodyacc-stdx	  time domain body accelaration standard deviation value- average value per tester per activity in  direction X
7	tbodyacc-stdy	  time domain body accelaration  standard deviation value- average value per tester per activity in  direction Y
8	tbodyacc-stdz	  time domain body accelaration  standard deviation value- average value per tester per activity in  direction Z
9	tgravityacc-meanx	  time domain gravity accelaration mean value- average value per tester per activity in  direction X
10	tgravityacc-meany	  time domain gravity accelaration mean value- average value per tester per activity in direction Y
11	tgravityacc-meanz	  time domain gravity accelaration mean value- average value per tester per activity in direction Z
12	tgravityacc-stdx	  time domain gravity accelaration standard deviation value- average value per tester per activity in  direction X
13	tgravityacc-stdy	  time domain gravity accelaration  standard deviation value- average value per tester per activity in direction Y
14	tgravityacc-stdz	  time domain gravity accelaration  standard deviation value- average value per tester per activity in  direction Z
15	tbodyaccjerk-meanx	  time domain body accelaration jerk signal mean value- average value per tester per activity in  direction X
16	tbodyaccjerk-meany	  time domain body accelaration  jerk signal mean value- average value per tester per activity in direction Y
17	tbodyaccjerk-meanz	  time domain body accelaration  jerk signal mean value- average value per tester per activity in direction Z
18	tbodyaccjerk-stdx	  time domain body accelaration   jerk signal standard deviation value- average value per tester per activity in direction X
19	tbodyaccjerk-stdy	  time domain body accelaration    jerk signal standard deviation value- average value per tester per activity in  direction Y
20	tbodyaccjerk-stdz	  time domain body accelaration   jerk signal standard deviation value- average value per tester per activity in  direction Z
21	tbodygyro-meanx	  time domain body gyrospcopic mean value- average value per tester per activity in X direction X
22	tbodygyro-meany	  time domain body gyrospcopic mean value- average value per tester per activity in X direction Y
23	tbodygyro-meanz	  time domain body gyrospcopic mean value- average value per tester per activity in X direction Z
24	tbodygyro-stdx	  time domain body gyrospcopic standard deviation value- average value per tester per activity in direction X
25	tbodygyro-stdy	  time domain body gyrospcopic  standard deviation value- average value per tester per activity in direction Y
26	tbodygyro-stdz	  time domain body gyrospcopic  standard deviation value- average value per tester per activity in direction Z
27	tbodygyrojerk-meanx	  time domain gravity gyrospcopic jerk mean value- average value per tester per activity in X direction X
28	tbodygyrojerk-meany	  time domain gravity gyrospcopic jerk mean value- average value per tester per activity in X direction Y
29	tbodygyrojerk-meanz	  time domain gravity gyrospcopic jerk mean value- average value per tester per activity in X direction Z
30	tbodygyrojerk-stdx	  time domain gravity gyrospcopic jerk standard deviation value- average value per tester per activity in direction X
31	tbodygyrojerk-stdy	  time domain gravity gyrospcopic  jerk standard deviation value- average value per tester per activity in direction Y
32	tbodygyrojerk-stdz	  time domain gravity gyrospcopic jerk standard deviation value- average value per tester per activity in  direction Z
33	fbodyacc-meanx	  time domain body gyrospcopic jerk signal mean value- average value per tester per activity in direction X
34	fbodyacc-meany	  time domain body gyrospcopic  jerk signal mean value- average value per tester per activity in  direction Y
35	fbodyacc-meanz	  time domain body gyrospcopic  jerk signal mean value- average value per tester per activity in direction Z
36	fbodyacc-stdx	  time domain body gyrospcopic   jerk signal standard deviation value- average value per tester per activity in  direction X
37	fbodyacc-stdy	 time domain  body gyrospcopic    jerk signal standard deviation value- average value per tester per activity in direction Y
38	fbodyacc-stdz	  time domain body gyrospcopic   jerk signal standard deviation value- average value per tester per activity in direction Z
39	fbodyaccjerk-meanx	frequency domain body acceleration jerk mean value - average value per test per activity in direction X
40	fbodyaccjerk-meany	frequency domain body acceleration jerk mean value - average value per test per activity in direction Y
41	fbodyaccjerk-meanz	frequency domain body acceleration jerk mean value - average value per test per activity in direction Z
42	fbodyaccjerk-stdx	frequency domain body acceleration jerk standard deviation value - average value per test per activity in direction X
43	fbodyaccjerk-stdy	frequency domain body acceleration jerk standard deviation value - average value per test per activity in direction Y
44	fbodyaccjerk-stdz	frequency domain body acceleration jerk standard deviation value - average value per test per activity in direction Z
45	fbodygyro-meanx	frequency domain body gyroscopic mean value - average value per test per activity in direction X
46	fbodygyro-meany	frequency domain body gyroscopic mean value - average value per test per activity in direction Y
47	fbodygyro-meanz	frequency domain body gyroscopic mean value - average value per test per activity in direction Z
48	fbodygyro-stdx	frequency domain body gyroscopic standard deviation value - average value per test per activity in direction X
49	fbodygyro-stdy	frequency domain body gyroscopic standard deviation value - average value per test per activity in direction Y
50	fbodygyro-stdz	frequency domain body gyroscopic standard deviation value - average value per test per activity in direction Z
		
