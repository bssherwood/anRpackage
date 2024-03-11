#' @import quantreg
#' @import hqreg
#' @import plyr
#' @import hrqglas
#' @import data.table
#' @import lifecycle
#' @import Matrix
#' @importFrom splines bs
#' @importFrom graphics lines plot par segments points legend
#' @importFrom stats coef coefficients predict quantile residuals sd xtabs fitted weighted.mean IQR resid
#' @importFrom Rdpack reprompt
#' @importFrom methods is
#' @importFrom Rcpp evalCpp
#' @useDynLib rqPen, .registration=TRUE
NULL 

#' anRpackage: Testing to see if I can get Rcpp Armadillo to work with other basic 
#' r functions for a package. 
#' 
#' @section anRpackage functions:
#' writing some functions
#'  
#' @docType package
#' @name anRpackage
#' @aliases anRpackage-package
NULL