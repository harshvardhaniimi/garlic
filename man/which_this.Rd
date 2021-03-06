% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/which_this.R
\name{which_this}
\alias{which_this}
\title{Which element is this?}
\usage{
which_this(df, x)
}
\arguments{
\item{df}{Data frame to search in}

\item{x}{condition to search}
}
\value{
Selected data frame
}
\description{
This function can find observations that satisfy a condition. Typically,
they are useful in finding specific elements. It is kind of a wrapper around dplyr’s filter().
}
\examples{
which_this(iris, "Sepal.Length > 7")
}
