#' Load packages and install if they're missing
#'
#' @param ... insert package names as arguments, separated by a comma.
#'
#' @return A vector showing which packages are loaded.
#' @export
#'
#' @examples
#' pkgs(readr, dplyr, ggplot2)  # loads the packages
#' pkgs(readr, dplyr, ggplot)  # shows a warning that ggplot is not available
pkgs <- function(...) {
  list <- as.character(sys.call())[-1] # converts arguments into a list

  # Function to load a package, or automatically install the package if it isn't
  # installed:
  install <- function(x) {
    if (!is.element(x, installed.packages()[,1]))
      install.packages(x, dep = TRUE)
    require(x, character.only = TRUE)
  }
  sapply(list, install)  # Apply function to list of packages.
}
