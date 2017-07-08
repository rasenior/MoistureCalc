#' calc_VPD
#'
#' Calculate vapour pressure deficit from temperature and relative humidity.
#' @param temp Temperature in °C.
#' @param rel_humidity Relative humidity as a percentage.
#' @return Vapour pressure deficit in pascals.
#' @export
#' @examples
#' calc_VPD(temp = 24, rel_humidity = 95)
calc_VPD <- function(temp, rel_humidity) {
      # Calculate saturated vapour pressure
      SVP <- calc_SVP(temp = temp)

      # Calculate VPD
      VPD <- (1 - (rel_humidity/100)) * SVP

      return(VPD)
}
