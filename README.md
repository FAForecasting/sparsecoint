# sparsecoint
This package implements the algorithm described in the paper "Forecasting using sparse cointegration" by Ines Wilms and Christophe Croux, available at https://doi.org/10.1016/j.ijforecast.2016.04.005.

The code is based on the code that was made available with the paper, but should be easier to use by a novice user.

To install the package run the following:
```
library(devtools)
install_github("FAForecasting/glassor")
install_github("FAForecasting/sparsecoint")
```
To build a model the function ```sparsecoint``` is used, an example is given below, where a forecast is also made and plotted:
```
library(sparsecoint)
model <- sparsecoint(data, p=12, intercept=TRUE)
forecast <- predict(model, h=12, samples=500)
plot(forecast)
```

![Forecast plot](forecast.png?raw=true "Forecast")

