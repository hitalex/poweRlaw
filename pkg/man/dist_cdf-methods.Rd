\docType{methods}
\name{dist_cdf}
\alias{dist_cdf}
\alias{dist_cdf,conexp-method}
\alias{dist_cdf,conlnorm-method}
\alias{dist_cdf,conpl-method}
\alias{dist_cdf,disexp-method}
\alias{dist_cdf,dislnorm-method}
\alias{dist_cdf,displ-method}
\alias{dist_cdf,dispois-method}
\title{The cumulative distribution function (cdf)}
\arguments{
  \item{m}{a distribution object.}

  \item{all_values}{logical; \code{FALSE} (default). If
  \code{TRUE}, then the cdf is evaluated at points xmin,
  xmin+1, ..., xmax.}

  \item{q}{a vector values where the function will be
  evaluated. If \code{q} is \code{NULL} (default), then the
  data values will be used.}

  \item{lower_tail}{logical; if \code{TRUE} (default),
  probabilities are \eqn{P[X \le x]}, otherwise, \eqn{P[X >
  x]}.}
}
\description{
  This is a generic function for calculating the cumulative
  distribution function (cdf) of distribution objects. This
  is similar to base R's \code{pnorm} for the normal
  distribution. The \code{dist_cdf} function calculates the
  cumulative probability distribution for the current
  parameters and xmin value.
}
\note{
  This method does *not* alter the internal state of the
  distribubtion objects.
}
\examples{
##########################################
#Load data and create distribution object#
##########################################
data(moby_sample)
m = displ$new(moby_sample)
m$setXmin(7); m$setPars(2)

##########################################
#Calculate the CDF at a particular values#
##########################################
dist_cdf(m, 10:15)

##########################################
#Calculate the CDF at the data values    #
##########################################
dist_cdf(m)
}

