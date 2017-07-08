#' calc_SVP
#'
#' Calculate saturated vapour pressure from temperature.
#' @param temp Temperature in °C.
#' @return Saturated vapour pressure in pascals.
#' @export
#' @examples
#' calc_SVP(temp = 24)
calc_SVP <- function(temp) {
      # N.B. Validity range roughly 0-80 deg C
      SVP <- 610.7 * 10^((7.5 * temp)/(237.3 + temp))

      return(SVP)
}
