% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/r2dii.data.R
\docType{data}
\name{overwrite_demo}
\alias{overwrite_demo}
\title{A demonstration dataset used to overwrite specific entity names or sectors}
\format{
An object of class \code{tbl_df} (inherits from \code{tbl}, \code{data.frame}) with 2 rows and 5 columns.
}
\usage{
overwrite_demo
}
\description{
Fake dataset used to manually link loanbook entities to mismatched asset
level entities.

Demo datasets are synthetic because most financial data is strictly private;
they help to demonstrate and test the implementation in R of 'PACTA'
(\url{https://www.transitionmonitor.com/}).
}
\section{Definitions}{


\itemize{
\item \code{id_2dii} (character): IDs of the entities to overwrite., * \code{level} (character): Which level should be overwritten (e.g. direct_loantaker or ultimate_parent)., * \code{name} (character): Overwrite name (if only overwriting sector, type NA)., * \code{sector} (character): Overwrite sector (if only overwriting name, type NA)., * \code{source} (character): What is the source of this information (leave as "manual" for now, may remove this flag later).
}

}

\examples{
head(overwrite_demo)
}
\seealso{
Other demo data: 
\code{\link{abcd_demo}},
\code{\link{co2_intensity_scenario_demo}},
\code{\link{loanbook_demo}},
\code{\link{market_share_demo}},
\code{\link{region_isos_demo}},
\code{\link{scenario_demo_2020}},
\code{\link{sda_demo}}
}
\concept{demo data}
\keyword{datasets}
