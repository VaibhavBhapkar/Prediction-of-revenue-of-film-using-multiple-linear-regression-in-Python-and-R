
# coding: utf-8



import numpy as np
import pandas as pd
#Reading dataset and selecting features
dataset=pd.read_csv("tmdb_5000_movies.csv")
dataset=dataset[['budget','popularity','runtime','vote_average','vote_count','revenue']]
dataset.to_csv("selected.csv")



#Cleaning of the dataset
df=pd.read_csv("selected.csv")
def clean_dataset(df):
    assert isinstance(df, pd.DataFrame), "df needs to be a pd.DataFrame"
    df.dropna(inplace=True)
    indices_to_keep = ~df.isin([np.nan, np.inf, -np.inf]).any(1)
    return df[indices_to_keep].astype(np.float64)
clean_dataset(df)



#splitting into training and test set
#separating dependent and independent variable
X=df.drop('revenue',axis=1)
y=df.revenue
from sklearn.model_selection import train_test_split
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size = 0.2, random_state = 0)



#Forming multiple linear regeression model
from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(X_train, y_train)



#Prediction on test set
y_pred = regressor.predict(X_test)



#checking of performance metrics the model is well fitted shows 0.70 r2 value
#r2 values varies from 0 to 1,1 is well fitted model
from sklearn.metrics import r2_score
r2_score(y_test, y_pred, multioutput='variance_weighted')
    





