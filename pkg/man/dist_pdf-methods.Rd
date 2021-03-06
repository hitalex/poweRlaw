\docType{methods}
\name{dist_pdf}
\alias{dist_pdf}
\alias{dist_pdf,conexp-method}
\alias{dist_pdf,conlnorm-method}
\alias{dist_pdf,conpl-method}
\alias{dist_pdf,disexp-method}
\alias{dist_pdf,dislnorm-method}
\alias{dist_pdf,displ-method}
\alias{dist_pdf,dispois-method}
\title{The probability density function (pdf)}
\arguments{
  \item{m}{The distribution reference object.}

  \item{q}{a vector values where the function will be
  evaluated. If \code{q} is \code{NULL} (default), then the
  data value will be used.}

  \item{log}{default \code{FALSE}. If \code{TRUE},
  probabilities are given as log(p).}
}
\value{
  The probability density (or mass) function
}
\description{
  This is generic function for distribution objects. This
  function calculates the probability density function
  (pdf) for the current parameters and xmin value.
}
\note{
  This method does *not* alter the internal state of the
  distribubtion objects.
}
\examples{
##########################################
#Create distribution object              #
##########################################
m = displ$new()
m$setXmin(7); m$setPars(2)

##########################################
#Calculate the pdf at particular values  #
##########################################
dist_pdf(m, 7:10)
}
\seealso{
  \code{\link{dist_cdf}}, \code{\link{dist_ll}} and
  \code{\link{dist_rand}}
}

