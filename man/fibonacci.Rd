% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{fibonacci}
\alias{fibonacci}
\title{Simple RcppClock example}
\usage{
fibonacci(n, reps = 10L)
}
\arguments{
\item{n}{vector giving integers for which to compute the fibonacci sum}

\item{reps}{number of replicates for timing}
}
\description{
Time the computation of fibonacci numbers
}
\details{
The function being timed is the following:

\code{int fib(int n) { return ((n <= 1) ? n : fib(n - 1) + fib(n - 2)); }}

Runtime for computations less than \code{n = 25} is nearly unmeasurable.
}
\examples{
fibonacci(n = c(25:35), reps = 10)
# this function creates a global environment variable "clock"
#   that is an S3 RcppClock object
clock
plot(clock)
summary(clock, units = "ms")
}
