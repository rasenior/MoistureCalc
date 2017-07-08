#' calc_WD
#'
#' Calculate water density from temperature.
#' @param temp Temperature in °C.
#' @return Water density in kg/m³
#' @export
#' @examples
#' calc_WD(temp = 24)
calc_WD <- function(temp) {
      # Empirical relation for range (T = 0-50 degrees C, error <0.1 kg/m^3)
      # At 3.98 deg C water has its highest density
      # Density in [kg/m^3].
      water_density <- 1000 - (0.0067 * (temp - 3.98)^2) +
            5.2e-07 * ((temp - 3.98)^4)

      return(water_density)
}
