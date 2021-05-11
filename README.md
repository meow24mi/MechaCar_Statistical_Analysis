# MechaCar Statistical Analysis
Utilizing R and RStudio to provide AutosRUs' insights for the manufacturing team. 

## Linear Regression to Predict MPG

As demonstrated in image below: the only variable is vehicle weight that produces non-random amount of variance to the mpg values. With a p-value of 0.0012, vehicle weight positively correlates to miles per gallon. 
![R Square](p-values(coefficients).png)
The slope of the linear regression is near zero for all variables aside from vehicle weight because the is no significant relationship between them. For the vehicle weight, the slope is not zero because the weight of the vehicle affects the mpg. 

Of all the data collected, only one out of the six variable is proven to affect mpg for the prototypes; the more variables that affect mpg will make this linear model stronger. Additional data should be collected to predict mpg more effectively. 

## Summary Statistics on Suspension Coils

![Total Summary](total_summary.png)
![Lot Summary](lot_summary.png)

## T-Tests on Suspension Coils
Lot 1 has a t value of 0, p-value of 1; Lot 2 has a t value of 0.5, and p-value of 0.6 and Lot 3 has a t-value of -2.1, and p-value of 0.04. Lot three is the only lot that did not happen by chance with the probability of it happening by chance less than 4% of the time.  
![T Test](t-test.png)

## Study Design: MechaCar vs Competition

From a consumer perspective, the car safety industry has ensured that most vehicles hitting the roads these days have reached a high level of safety. In a more fun fashion, I would be interested the number of cup holders there are in a vehicle. I prefer more cup holders to hold not just the basic beverages: water, tea, and coffee, but also my wallet, keys and other items that I need within close reach. My null hypothese will be that for the same class vehicles, the cars from other companies with less cup holders than MechaCars sell less cars than MechaCars. The alternate hypothesis will be that for the same class vehicles, the cars from other companies with the same or more cupholders than MechaCars will sell more cars than MechaCars.

To perform this analysis, we need to collect data in terms of the number of cupholders in vehicles and the number of sales over the same period, given that we're comparing the same class of vehicles. We will then perform statistical analysis: linear regression of number sales against number of cup holders less than MechaCars, and number of cup holders equal or more than MechaCars. Linear regression will help determine the p-value and determine if there is a correlation. 