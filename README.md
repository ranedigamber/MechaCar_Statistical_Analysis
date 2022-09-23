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

The follwing picture provides a summary stats for the lot.

![suspension_lot_summary](https://user-images.githubusercontent.com/107159218/191882704-21073676-ac4d-4544-bf51-55549308bef0.PNG)

1. The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
The variance of the total manufacturing is 62 which is less than the specification (less than 100) and meets the set criteria. However upon inspecting the variance in the lot we see that the numbers for Lot3 is almost twice the specifications. Lot1 and Lot2 are well within specification

## Deliverable3: T-test on Suspension Coils
As seen from the picture below. The t-test for all manufacturing lot yielded a p-value=1 which is greater than alpha = 0.05. This indicates that there is no difference between the means and we can reject the null hypothesis


  ![t-test_allLots](https://user-images.githubusercontent.com/107159218/191884749-a0819c01-859b-4d05-aa80-8dff8ad29634.PNG)

For Lot1: The p-value=1.56e-11 is substantially lower than the alpha= 0.05. This indicates that there is difference between the means and in this case we fail to reject the null hypothesis

![t-test_lot1](https://user-images.githubusercontent.com/107159218/191884988-16d93687-a14c-4e70-a67f-e6ef6d27ec85.PNG)

For Lot2: The p-value = 0.00059 is subtantially lower than alpha = 0.05. This indicates that there is a difference between the means and in this case we fail to reject the null hypothesis

![t-test_lot2](https://user-images.githubusercontent.com/107159218/191885126-09149c2c-f3bb-4155-b5d0-721909ad8872.PNG)

For Lot3: The p-value = 0.1589 is higher than alpha = 0.05. This indicates that there is no difference between the mean. Hence we can reject the null hypothesis. 

![t-test_lot3](https://user-images.githubusercontent.com/107159218/191885233-cd303fff-c421-44d0-bf44-e1994f56dfcc.PNG)


## Deliverable 4: Study Design: MechCar vs Competition
When comparing MechaCar to its competition additional metrics that could be of interest to the customer would be; sale price, maintenance cost, safety rating, fuel economy. 

1. What metric are you going to test? 
Safety is considered fairly highly by consumers. I would test safety ratings compared to competition. Fuel mileage and cost of maintenance would also be strongly considered. 

2. What is the null hypothesis or alternative hypothesis?
 The null hypothesis would suggest that the mean of safety rating is equal to zero. The alternate hypothesis would be the mean of safety rating is not equal to zero.
 
 3. What statistical test would you use to test the hypothesis?
 Comparing the effect of variables on safet rating can be studied by applying multiple linear regression analysis to MechaCar and its competitors.
 
 4. What data is needed to run the statistical test? 
 A sample size of 50 should be used and applied to the metrics such as sale price, maintenance cost, safety ratings and fuel economy. The data generated from this sample size should provide an adequate sampling for a resonable analysis. 
