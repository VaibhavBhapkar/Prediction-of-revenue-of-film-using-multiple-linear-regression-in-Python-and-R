# Importing the dataset
dataset = read.csv('tmdb_5000_movies.csv')
dataset=dataset[c('budget','popularity','runtime','vote_average','vote_count','revenue')]


# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$revenue, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = revenue ~ .,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)


# Building the optimal model using Backward Elimination

regressor = lm(formula = revenue ~ budget + popularity + runtime + vote_average+vote_count,
               data = dataset)
summary(regressor)

regressor = lm(formula = revenue ~ budget + popularity + vote_average + vote_count,
               data = dataset)
summary(regressor)

regressor = lm(formula = revenue ~ budget + popularity + vote_count,
               data = dataset)
summary(regressor)

#At the end we found three significant attributes which impacts on the value of dependent variable are given below:
#1.budget
#2.popularity
#3.vote_count


