% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mainFunctions.R
\name{qic}
\alias{qic}
\title{Calculate information criterion for penalized quantile regression models. Currently not exported.}
\usage{
qic(model, n, method = c("BIC", "AIC", "PBIC"))
}
\arguments{
\item{model}{model from a rq.pen.seq() object}

\item{n}{Sample size}

\item{method}{Choice of BIC, AIC or PBIC, a large p BIC.}
}
\value{
Let \eqn{\hat{\beta}} be the coefficient vectors for the estimated model. Function returns the value 
\deqn{\log(\sum_{i=1}^n w_i \rho_\tau(y_i-x_i^\top\hat{\beta})) + d*b/(2n),} where d is the number of nonzero coefficients and b depends on the method used. For AIC \eqn{b=2},
for BIC \eqn{b=log(n)} and for PBIC \eqn{d=log(n)*log(p)} where p is the dimension of \eqn{\hat{\beta}}. The values of w_i default to one and are set using weights when fitting the models. Returns this value for each coefficient vector in the model, so one
for every value of \eqn{\lambda}.
}
\description{
Calculate information criterion for penalized quantile regression models. Currently not exported.
}
\examples{
\dontrun{
set.seed(1)
x <- matrix(runif(800),ncol=8)
y <- 1 + x[,1] + x[,8] + (1+.5*x[,3])*rnorm(100)
m1 <- rq.pen(x,y,tau=c(.25,.75))
# returns the IC values for tau=.25
qic(m1$models[[1]],m1$n) 
# returns the IC values for tau=.75
qic(m1$models[[2]],m1$n)
} 
}
\references{
\insertRef{qrbic}{rqPen}
}
\author{
Ben Sherwood, \email{ben.sherwood@ku.edu}
}
\keyword{internal}
