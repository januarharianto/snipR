#' Refresh current session
#'
#' Simple function that does just two things: (1) Clears all objects from global
#' environment; and (2) perform garbage collection.
#'
#' I work in Rmarkdown a lot and this function helps me ensure that the R
#' session cleans itself up.
#'
#' @return NULL
#' @export
#'
#' @examples
#' refresh()
refresh <- function() {
  rm(list = ls(
    envir = .GlobalEnv),
    envir = .GlobalEnv)  # remove all objects from global env
  gc()                   # garbage collection
  message("Refresh complete.")
}
