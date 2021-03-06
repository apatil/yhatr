% Generated by roxygen2 (4.0.2.9000): do not edit by hand
% Please edit documentation in R/yhatR.R
\name{yhat.test_predict}
\alias{yhat.test_predict}
\title{Test a prediction through the JSONification process}
\usage{
yhat.test_predict(data, verbose = FALSE)
}
\arguments{
\item{data}{Data to envoke the model with}

\item{verbose}{Whether or not to print intermediate results}
}
\description{
This function tests model.transform and model.predict on new data by sending
it through a JSONification process before the two stated functions. This
allows users to test their model locally in conditions that are similar to
those after a deployment.
}
\examples{
model.transform <- function(df) {
 df$Sepal.Width_sq <- df$Sepal.Width^2
 df
}
model.predict <- function(df) {
 data.frame("prediction"=predict(fit, df, type="response"))
}
\dontrun{
model.test_predict(iris)
}
}

