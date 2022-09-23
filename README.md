# MechaCar_Statistical_Analysis
## Overview of the challenge
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, we are helping Jeremy and the data analytics team do the following:
  1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
  2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
  3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverable 1: Linear Regression to Predict MPG
The Mecha_Car_mpg file contains data obtained for 6 parameters for 50 prototype cars.
Linear regression analysis was perform using RScript on several variables in this data set and yielded the co-efficients listed in this picture below. 

![Linear_Regress_analysis](https://user-images.githubusercontent.com/107159218/191880233-0a670118-7deb-423b-8d6c-4bfd8dce6819.PNG)

Additionally summary of the linear regression provided min, max and the median. As seen from the picture below the min=-19.4, max= 18.5 and median=-0.69

![Linear_Regress_analysis_summary](https://user-images.githubusercontent.com/107159218/191880536-65d5013b-9ba5-40e8-90dd-a54964b680e9.PNG)

From the summary the following can be infered:
1. Which variable/coefficients provided a non-random amount of variance to the mpg values in the data set. 
Vehicle_lenght and ground_clearance provided a non-random amount of variance to the mpg values.

2. Is the slope of the linear model considered to be zero? Why or why not?
The slope of this linear model based on the coefficients of the various variables obtained after applying linear regression is not zero. This is due to the fact that the sum of all the coefficients yields a positive integer. 

3. Does this linear model predict mpg of the MechaCar prototypes effectively? Why or why not?
The R-squared value based on the summary analysis is 0.71, this indicates relatively high amount of variance in the dataset. R-squared values above 85 and especially above 90 are considered as ideal. The data maybe adequate with considerations.

## Deliverable 2: Summary on Suspension Coils
The following picture provides the summary stats for all the manufacturing lots. 

![Summary_suspension_coils](https://user-images.githubusercontent.com/107159218/191882481-805ec97a-9b26-4c45-993d-0f507d71e4eb.PNG)


  * This election saw a good voter turnout and a total of **369,711** votes were casted across three counties. 

### Summary of number of votes and the percentage of total votes for each county in the precinct
  * The result of the number of votes cast and percentage of total votes are as follows:
    * Denver county: 82.8% (306,055)
    * Jefferson county: 10.5% (38,855)
    * Arapahoe county: 6.7% (24,801)

### County with largest number of votes
  * **Denver county** had the largest voter turnout

### Summary of number of votes and the percentage of total votes for each candidates overall
  * The following is the tabulated result for total votes and percentage of the total for the three candidates:
    * **Diana DeGette: 73.8% (272,892)**
    * Charles Casper Stockham: 23.0% (85,213)
    * Raymon Anthony Doane: 3.1% (11,606) 

### Election outcome
  * The winner for this election was:
    * ***Diana DeGette*** who received **272,892** votes which was **73.8%** of the total votes casted.
 
### Various features of the code
  * How to get candidate vote count
 
 ![Code Candidate vote count](https://user-images.githubusercontent.com/107159218/176787617-18729b4d-f7fc-45b2-b9c1-f8c46c1c9dea.JPG)

  * How to get county vote count
 
 ![Code_countyvote count](https://user-images.githubusercontent.com/107159218/176787653-9dc5d13d-2cc9-4b7e-ad4d-94774a4a4e1e.JPG)

  * How to get candidate votes percentage
 
 ![Code_Candidate votes and their percentage](https://user-images.githubusercontent.com/107159218/176787717-54dc6077-5213-42a3-b38d-d2ef5ffb072c.JPG)

  * How to get county vote percentage
 
![Code_percentage of county votes](https://user-images.githubusercontent.com/107159218/176787780-d7fbdc41-35c7-4745-b9b6-1f68e7e2f016.JPG)

  * How to get total votes casted
  
 ![Code_total vote count](https://user-images.githubusercontent.com/107159218/176787828-ebb1f835-095e-4e80-9e57-3bc9e8898b37.JPG)

 
### Election Audit Summary
  * The script could be modifed for a national level elections, for example in this audit we declared a dictionary with *key=county* and *value=votes*. In a similar fashion we could use a dictionary of list with *key=states* and *values=[list of counties]*
  * We could also use modify the script to iterate over results from past years or they type of ballots cast (mail in, hand counted or computer counted) which could provide more statistical information and reveal any underlying trends or preferences 
