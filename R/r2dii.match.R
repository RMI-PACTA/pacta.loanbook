#' @inherit r2dii.match::calculate_match_success_rate
#' @family matching functions
#' @export

calculate_match_success_rate <- r2dii.match::calculate_match_success_rate


#' @inherit r2dii.match::crucial_lbk return title description details seealso sections references examples author source note format
#' @family matching functions
#' @export

crucial_lbk <- r2dii.match::crucial_lbk


#' @inherit r2dii.match::match_name
#' @examples
#' library(r2dii.data)
#' library(tibble)
#'
#' # Small data for examples
#' loanbook <- head(loanbook_demo, 50)
#' abcd <- head(abcd_demo, 50)
#'
#' match_name(loanbook, abcd)
#'
#' match_name(loanbook, abcd, min_score = 0.9)
#'
#' # match on LEI
#' loanbook <- tibble(
#'   sector_classification_system = "NACE",
#'   sector_classification_direct_loantaker = "D35.11",
#'   id_ultimate_parent = "UP15",
#'   name_ultimate_parent = "Won't fuzzy match",
#'   id_direct_loantaker = "C294",
#'   name_direct_loantaker = "Won't fuzzy match",
#'   lei_direct_loantaker = "LEI123"
#' )
#'
#' abcd <- tibble(
#'   name_company = "alpine knits india pvt. limited",
#'   sector = "power",
#'   lei = "LEI123"
#' )
#'
#' match_name(loanbook, abcd, join_id = c(lei_direct_loantaker = "lei"))
#'
#' # Use your own `sector_classifications`
#' your_classifications <- tibble(
#'   sector = "power",
#'   borderline = FALSE,
#'   code = "D35.11",
#'   code_system = "XYZ"
#' )
#'
#' loanbook <- tibble(
#'   sector_classification_system = "XYZ",
#'   sector_classification_direct_loantaker = "D35.11",
#'   id_ultimate_parent = "UP15",
#'   name_ultimate_parent = "Alpine Knits India Pvt. Limited",
#'   id_direct_loantaker = "C294",
#'   name_direct_loantaker = "Yuamen Xinneng Thermal Power Co Ltd"
#' )
#'
#' abcd <- tibble(
#'   name_company = "alpine knits india pvt. limited",
#'   sector = "power"
#' )
#'
#' match_name(loanbook, abcd, sector_classification = your_classifications)
#' @family matching functions
#' @export

match_name <- r2dii.match::match_name


#' @inherit r2dii.match::prioritize
#' @family matching functions
#' @export

prioritize <- r2dii.match::prioritize


#' @inherit r2dii.match::prioritize_level
#' @family matching functions
#' @export

prioritize_level <- r2dii.match::prioritize_level
