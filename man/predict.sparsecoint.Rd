% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.R
\name{predict.sparsecoint}
\alias{predict.sparsecoint}
\title{Predict using a model of class sparsecoint.}
\usage{
\method{predict}{sparsecoint}(x, h = 1, exo = NULL, samples = FALSE, PI = 0.95, error = 0)
}
\arguments{
\item{x}{The sparsecoint model object.}

\item{h}{The prediction horizon.}

\item{exo}{Exogenous data to use for the prediction, must be a matrix of size h*exo_k.}

\item{samples}{The number of samples to obtain for prediction intervals, default is FALSE which means no samples.}

\item{PI}{The level of the prediction intervals to create, default is 0.95.}

\item{error}{Error term to add to the predictions, used when creating samples. Should only be used internally.}
}
\value{
A prediction of length h, possibly including samples and prediction intervals.
}
\description{
Predict using a model of class sparsecoint.
}
