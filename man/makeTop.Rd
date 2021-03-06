% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/makeTop.R
\name{makeTop}
\alias{makeTop}
\title{Rank Variables By Their Frequences
...}
\usage{
makeTop(ImportResult, varToRank, n = "all")
}
\arguments{
\item{ImportResult}{data frame}

\item{varToRank}{variable name}

\item{n}{number of taxas in the output (default = all)}
}
\value{
data frame
}
\description{
Rank Variables By Their Frequences
...
}
\examples{
data(iris)
makeTop(ImportResult = iris, varToRank = "Sepal.Length", n=5)

}
