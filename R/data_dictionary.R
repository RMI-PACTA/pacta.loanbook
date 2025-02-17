#' Data Dictionary
#'
#' A table of column names and descriptions of data frames used or exported by
#' the functions in this package.
#'
#' @family data dictionary
#'
#' @format ## `data_dictionary`
#' \describe{
#'   \item{dataset}{Name of the dataset}
#'   \item{column}{Name of the column}
#'   \item{typeof}{Type of the column}
#'   \item{definition}{Definition of the column}
#' }
#'
#' @examples
#' data_dictionary
#'
#' @export

data_dictionary <- dplyr::bind_rows(
  r2dii.data::data_dictionary,
  r2dii.match::data_dictionary,
  r2dii.analysis::data_dictionary,
  r2dii.plot::data_dictionary
)
