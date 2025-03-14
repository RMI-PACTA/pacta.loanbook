#' @inherit r2dii.plot::plot_emission_intensity
#' @examples
#' # plot with `qplot_emission_intensity()` parameters
#' data <- subset(sda, sector == "cement" & region == "global")
#' data <- prep_emission_intensity(data, span_5yr = TRUE, convert_label = to_title)
#'
#' plot_emission_intensity(data)
#' @family plotting functions
#' @export

plot_emission_intensity <- r2dii.plot::plot_emission_intensity


#' @inherit r2dii.plot::plot_techmix
#' @examples
#' # plot with `qplot_techmix()` parameters
#' data <- subset(
#'   market_share,
#'   scenario_source == "demo_2020" &
#'     sector == "power" &
#'     region == "global" &
#'     metric %in% c("projected", "corporate_economy", "target_sds")
#' )
#' data <- prep_techmix(
#'   data,
#'   span_5yr = TRUE,
#'   convert_label = recode_metric_techmix,
#'   convert_tech_label = spell_out_technology
#' )
#'
#' plot_techmix(data)
#' @family plotting functions
#' @export

plot_techmix <- r2dii.plot::plot_techmix


#' @inherit r2dii.plot::plot_trajectory
#' @examples
#' # plot with `qplot_trajectory()` parameters
#' data <- subset(
#'   market_share,
#'   sector == "power" &
#'     technology == "renewablescap" &
#'     region == "global" &
#'     scenario_source == "demo_2020"
#' )
#' data <- prep_trajectory(data)
#'
#' plot_trajectory(
#'   data,
#'   center_y = TRUE,
#'   perc_y_scale = TRUE
#' )
#' @family plotting functions
#' @export

plot_trajectory <- r2dii.plot::plot_trajectory


#' @inherit r2dii.plot::prep_emission_intensity
#' @family plotting functions
#' @export

prep_emission_intensity <- r2dii.plot::prep_emission_intensity


#' @inherit r2dii.plot::prep_techmix
#' @family plotting functions
#' @export

prep_techmix <- r2dii.plot::prep_techmix


#' @inherit r2dii.plot::prep_trajectory
#' @family plotting functions
#' @export

prep_trajectory <- r2dii.plot::prep_trajectory


#' @inherit r2dii.plot::qplot_emission_intensity
#' @family plotting functions
#' @export

qplot_emission_intensity <- r2dii.plot::qplot_emission_intensity


#' @inherit r2dii.plot::qplot_techmix
#' @family plotting functions
#' @export

qplot_techmix <- r2dii.plot::qplot_techmix


#' @inherit r2dii.plot::qplot_trajectory
#' @family plotting functions
#' @export

qplot_trajectory <- r2dii.plot::qplot_trajectory


#' @inherit r2dii.plot::recode_metric_techmix
#' @family plotting functions
#' @export

recode_metric_techmix <- r2dii.plot::recode_metric_techmix


#' @inherit r2dii.plot::recode_metric_trajectory
#' @family plotting functions
#' @export

recode_metric_trajectory <- r2dii.plot::recode_metric_trajectory


#' @inherit r2dii.plot::scale_colour_r2dii
#' @family plotting functions
#' @export

scale_colour_r2dii <- r2dii.plot::scale_colour_r2dii


#' @inherit r2dii.plot::scale_colour_r2dii_sector
#' @family plotting functions
#' @export

scale_colour_r2dii_sector <- r2dii.plot::scale_colour_r2dii_sector


#' @inherit r2dii.plot::scale_colour_r2dii_tech
#' @family plotting functions
#' @export

scale_colour_r2dii_tech <- r2dii.plot::scale_colour_r2dii_tech


#' @inherit r2dii.plot::scale_fill_r2dii
#' @family plotting functions
#' @export

scale_fill_r2dii <- r2dii.plot::scale_fill_r2dii


#' @inherit r2dii.plot::scale_fill_r2dii_sector
#' @family plotting functions
#' @export

scale_fill_r2dii_sector <- r2dii.plot::scale_fill_r2dii_sector


#' @inherit r2dii.plot::scale_fill_r2dii_tech
#' @family plotting functions
#' @export

scale_fill_r2dii_tech <- r2dii.plot::scale_fill_r2dii_tech


#' @inherit r2dii.plot::spell_out_technology
#' @family plotting functions
#' @export

spell_out_technology <- r2dii.plot::spell_out_technology


#' @inherit r2dii.plot::theme_2dii
#' @family plotting functions
#' @export

theme_2dii <- r2dii.plot::theme_2dii


#' @inherit r2dii.plot::to_title
#' @family plotting functions
#' @export

to_title <- r2dii.plot::to_title


# -------------------------------------------------------------------------

#' @inherit r2dii.plot::market_share return title description details seealso sections references examples author source note format
#' @family demo data
#' @export

market_share <- r2dii.plot::market_share


#' @inherit r2dii.plot::palette_colours return title description details seealso sections references examples author source note format
#' @family datasets
#' @export

palette_colours <- r2dii.plot::palette_colours


#' @inherit r2dii.plot::scenario_colours return title description details seealso sections references examples author source note format
#' @family datasets
#' @export

scenario_colours <- r2dii.plot::scenario_colours


#' @inherit r2dii.plot::sda return title description details seealso sections references examples author source note format
#' @family demo data
#' @export

sda <- r2dii.plot::sda


#' @inherit r2dii.plot::sector_colours return title description details seealso sections references examples author source note format
#' @family datasets
#' @export

sector_colours <- r2dii.plot::sector_colours


#' @inherit r2dii.plot::technology_colours return title description details seealso sections references examples author source note format
#' @family datasets
#' @export

technology_colours <- r2dii.plot::technology_colours
