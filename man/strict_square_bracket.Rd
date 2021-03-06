% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shim-square-bracket.R
\name{strict_square_bracket}
\alias{strict_square_bracket}
\title{Strict behaviour for square bracket indexing}
\usage{
strict_square_bracket(x, ...)
}
\arguments{
\item{x}{The object to be indexed.}

\item{...}{Indexing values.}
}
\description{
The effect of indexing with a factor is unclear, since factors can behave
like character vectors or integer vectors, depending upon context. In
strict mode, factor indexing throws an error.
}
\examples{
(x <- c(d = 1, c = 4, b = 9, a = 16))
(index <- factor(letters[1:4]))
# Character and integer indexing is OK.
x[as.character(index)]
x[as.integer(index)]
# Factor indexing is disallowed.
try(x[index])

# For higher dimension objects, passing a factor
# to any dimension throws an error.
d <- data.frame(
  a = 1:4, b = letters[1:4], c = runif(4),
  stringsAsFactors = FALSE)
try(d[factor(d$b), ])
try(d[, factor(c("a", "b"))])
}
