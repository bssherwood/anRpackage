% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mainFunctions.R
\name{bytau.plot.rq.pen.seq}
\alias{bytau.plot.rq.pen.seq}
\title{Plot of how coefficients change with tau.}
\usage{
\method{bytau.plot}{rq.pen.seq}(x, a = NULL, lambda = NULL, lambdaIndex = NULL, vars = NULL, ...)
}
\arguments{
\item{x}{An rq.pen.seq object}

\item{a}{The tuning parameter a of interest}

\item{lambda}{The lambda value of interest.}

\item{lambdaIndex}{The lambda index of interest. Only specify lambdaIndex or lambda, not both.}

\item{vars}{Index of the variables to plot with 1 being the intercept, 2 being the first predictor, etc. Default is to include all variables.}

\item{...}{Additional parameters sent to coef()}
}
\value{
A plot of coefficient values by tau.
}
\description{
Plot of how coefficients change with tau.
}
\examples{
  set.seed(1)
  x <- matrix(rnorm(800),nrow=100)
  y <- 1 + x[,1] - 3*x[,5] + rnorm(100)
  lassoModels <- rq.pen(x,y,tau=seq(.1,.9,.1))
  bytau.plot(lassoModels,lambda=lassoModels$lambda[5])
}
\author{
Ben Sherwood, \email{ben.sherwood@ku.edu}
}
