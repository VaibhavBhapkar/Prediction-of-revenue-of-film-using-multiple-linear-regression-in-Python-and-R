# Multiple Linear Regression

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

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = revenue ~ .,
               data = training_set)
summary(regressor)
# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
