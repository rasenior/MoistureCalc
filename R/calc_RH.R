#' calc_RH
#'
#' Calculate relative humidity from dry bulb temperature and wet bulb temperature.
#' @param dry_bulb Dry bulb temperature in °C.
#' @param wet_bulb Wet bulb temperature in °C.
#' @return Relative humidity as a percentage.
#' @export
#' @examples
#' calc_RH(dry_bulb = 24, wet_bulb = 22.5)
calc_RH <- function(dry_bulb, wet_bulb) {
      # Calculate saturated vapour pressure at dry bulb temp
      SVP_dry <- calc_SVP(temp = dry_bulb)
      # Calculate saturated vapour pressure at wet bulb temp
      SVP_wet <- calc_SVP(temp = wet_bulb)

      # Calculate partial vapour pressure
      # **Assuming ambient pressure 1 atm**
      PVP <- SVP_wet - 66.87 * (1 + (0.0015 * wet_bulb)) * (dry_bulb - wet_bulb)

      # Calculate relative humidity as the ratio between partial vapour
      # pressure (PVP) and saturated vapour pressure (SVP) at dry bulb
      # temperature
      rel_humidity <- (PVP/SVP_dry) * 100

      return(rel_humidity)
}
