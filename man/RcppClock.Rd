% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppClock.R
\docType{package}
\name{RcppClock}
\alias{RcppClock}
\alias{RcppClock,}
\alias{RcppClock-package,}
\alias{RcppClock-class}
\alias{summary.RcppClock}
\alias{print.RcppClock}
\alias{plot.RcppClock}
\title{RcppClock}
\usage{
\method{summary}{RcppClock}(object, units = "auto", ...)

\method{print}{RcppClock}(x, ...)

\method{plot}{RcppClock}(x, ...)
}
\arguments{
\item{object}{RcppClock object}

\item{units}{nanoseconds (\code{"ns"}), microseconds (\code{"us"}), milliseconds (\code{"ms"}), seconds (\code{"s"}), or auto (\code{"auto"})}

\item{...}{arguments to other functions}

\item{x}{RcppClock object}
}
\description{
Time Rcpp functions and summarize, print, and plot runtime statistics
}
\details{
See https://github.com/zdebruine/RcppClock/readme.md for information on how to use the package.
}
\section{RcppClock functions}{

See the RcppClock README on \code{https://github.com/zdebruine/RcppClock#readme} for basic usage examples.

When the Rcpp \verb{Rcpp::clock::stop()} method is called in Rcpp code, an S3 \code{RcppClock} object
will be created in the global environment. This object contains three methods:
\itemize{
\item \code{summary}: computes runtime summary statistics and returns a \code{data.frame}
\item \code{print}:  runs \code{summary} and then prints the resulting \code{data.frame}
\item \code{plot}:  a ggplot2 violin plot with jitter points showing runtimes for each expression
}

The \code{\link{fibonacci}} function is a simple example of how to use RcppClock.
See the source code on \code{github.com/zdebruine/RcppClock/src/fibonacci.cpp}
}

\examples{
library(RcppClock)
fibonacci(n = 25:35, reps = 10)
# this function creates a global environment variable "clock"
#   that is an S3 RcppClock object
clock
plot(clock)
summary(clock, units = "ms")

\dontrun{
# this is the Rcpp code behind the "fibonacci" example function

```{Rcpp}
//[[Rcpp::depends(RcppClock)]]
#include <RcppClock.h>

int fib(int n) {
return ((n <= 1) ? n : fib(n - 1) + fib(n - 2));
}

//[[Rcpp::export]]
void fibonacci(std::vector<int> n, int reps = 10) {
  Rcpp::Clock clock;
  while(reps-- > 0){
    for(auto number : n){
      clock.tick("fib" + std::to_string(number));
      fib(number);
      clock.tock("fib" + std::to_string(number));
    }
 }
 clock.stop("clock");
}
```
}
}
\seealso{
\code{\link{fibonacci}}
}
