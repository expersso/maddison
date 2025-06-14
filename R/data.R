#' Maddison Project Database
#'
#' This package contains the
#' \href{http://www.ggdc.net/maddison}{Maddison Project Database}, which
#' contains estimates of GDP per capita for all countries in the world between
#' AD 1 and 2022, in a format amenable to analysis in R.
#'
#' @format A data frame with 12 variables:
#' \describe{
#' \item{\code{year}}{Year of estimate}
#' \item{\code{countrycode}}{Country code used in the original database.
#' Differs from \code{iso3c} for only two former countries, Czechoslovakia and
#' Yugoslavia, which have no ISO country code.}
#' \item{\code{country}}{Country name, standardized from those found in the
#' original database using the \code{countrycode} package.}
#' \item{\code{cgdppc}}{Current GDP per capita in 2011 U.S. dollars}
#' \item{\code{gdppc}}{Real GDP per capita in 2011 U.S. dollars}
#' \item{\code{pop}}{Population}
#' \item{\code{i_cig}}{Whether observation is extrapolated/interpolated/benchmark}
#' \item{\code{i_bm}}{Type of benchmark estimate}
#' \item{\code{iso2c}}{Country ISO-2C code (missing for Czechoslovakia and
#' Yugoslavia)}
#' \item{\code{iso3c}}{Country ISO-3C code (missing for Czechoslovakia and
#' Yugoslavia)}
#' \item{\code{continent}}{Country continent}
#' \item{\code{region}}{Country region}
#' }
#'
#' The database was last updated in 2022.
#'
#' As per instructions on the Maddison Project website, please site the data as
#' follows:
#'
#'\tabular{ll}{
#' When using these data (for whatever purpose), please make the following
#' reference:\cr
#' - Maddison Project Database, version 2018. Bolt, Jutta, Robert Inklaar,
#' Herman de Jong and Jan Luiten van Zanden (2018), "Rebasing 'Maddison': new
#' income comparisons and the shape of long-run economic development", Maddison
#' Project Working paper 10.
#' <https://www.rug.nl/ggdc/historicaldevelopment/maddison/research> \cr
#' - For the references to the original research on individual countries, see
#' Appendix A of Bolt et al. (2018).\cr
#' }
#'
#' This package is not affiliated with, nor endorsed by, the Maddison Project.
"maddison"