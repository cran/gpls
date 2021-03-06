\name{glpls1a.mlogit}
\alias{glpls1a.mlogit}
\title{Fit MIRWPLS and MIRWPLSF model}
\description{
  Fit multi-logit Iteratively ReWeighted Least Squares (MIRWPLS) with an
  option of Firth's bias reduction procedure (MIRWPLSF) for multi-group
  classification
}
\usage{
glpls1a.mlogit(x, y, K.prov = NULL, eps = 0.001, lmax = 100, b.ini = NULL, denom.eps = 1e-20, family = "binomial", link = "logit", br = T)
}

\arguments{
  \item{x}{ n by p design matrix (with intercept term)}
  \item{y}{ response vector with class lables 1 to C+1 for C+1 group
    classification,  baseline class should be 1}
  \item{K.prov}{ number of PLS components}
  \item{eps}{tolerance for convergence}
  \item{lmax}{ maximum number of iteration allowed }
  \item{b.ini}{ initial value of regression coefficients}
  \item{denom.eps}{ small quanitity to guarantee nonzero denominator in
    deciding convergence}
  \item{family}{ glm family, \code{binomial} (i.e. multinomial here) is the only relevant one here }
  \item{link}{ link function, \code{logit} is the only one practically implemented now}
  \item{br}{TRUE if Firth's bias reduction procedure is used}
}
\details{
  
}
\value{
  \item{coefficients }{regression coefficient matrix}
  \item{convergence }{whether convergence is achieved}
  \item{niter}{total number of iterations}
  \item{bias.reduction}{whether Firth's procedure is used}
}

\references{
  \itemize{
     \item Ding, B.Y. and Gentleman, R. (2003) \emph{Classification using
     generalized partial least squares}. 
     \item Marx, B.D (1996) Iteratively reweighted partial least squares
     estimation for generalized linear regression. \emph{Technometrics} 38(4):
     374-381.  
  }
}
\author{Beiying Ding, Robert Gentleman}
\note{}

\seealso{ \code{\link{glpls1a}},\code{\link{glpls1a.mlogit.cv.error}},
  \code{\link{glpls1a.train.test.error}},
  \code{\link{glpls1a.cv.error}}}

\examples{
 x <- matrix(rnorm(20),ncol=2)
 y <- sample(1:3,10,TRUE)
 ## no bias reduction and 1 PLS component
 glpls1a.mlogit(cbind(rep(1,10),x),y,K.prov=1,br=FALSE)
 ## bias reduction
 glpls1a.mlogit(cbind(rep(1,10),x),y,br=TRUE)
}

\keyword{regression}


