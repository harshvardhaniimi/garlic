% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/show_in_excel.R
\name{show_in_excel}
\alias{show_in_excel}
\title{Open a data frame in MS Excel}
\usage{
show_in_excel(.data)
}
\arguments{
\item{.data}{Data frame to show}
}
\value{
The function doesn't return any value (NULL).
}
\description{
This function takes in a data frame as argument and shows it in Microsoft Excel
or any other spreadsheet program like OpenOffice.org. It can also be used with pipes. I found it
on Twitter but forgot who tweeted it. If you know, let me know so that I can cite them.
}
\examples{
show_in_excel(iris)
}
