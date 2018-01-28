# Prediction-of-revenue-of-film-using-multiple-linear-regression-in-Python-and-R
This project deals to build a multiple linear regression model for prediction of revenue of film using dataset provided by IMDB which consists of 5000 movies dataset this project include following steps:
1. Reading of dataset
2. Selecting features from dataset
3. Identifying dependent and independent attributes (features)
4. Training of regression model
5. Prediction of revenue of film

After performing this steps Performance obtained by regression model is measured by r2 performance metrics and it shows result of 0.7135.
Coefficients:
               Estimate Std. Error t value Pr(>|t|)    
(Intercept)  -4.509e+06  8.901e+06  -0.507    0.613    
budget        1.637e+00  4.471e-02  36.603  < 2e-16 ***
popularity    2.947e+05  6.655e+04   4.428 9.79e-06 ***
runtime      -1.752e+04  7.128e+04  -0.246    0.806    
vote_average -1.635e+06  1.325e+06  -1.234    0.217    
vote_count    6.535e+04  1.967e+03  33.223  < 2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 88430000 on 3834 degrees of freedom
  (2 observations deleted due to missingness)
Multiple R-squared:  0.7139,	Adjusted R-squared:  0.7135 
F-statistic:  1913 on 5 and 3834 DF,  p-value: < 2.2e-16
  
This project also deals to optimize the regression model by removing unimportant attributes.


