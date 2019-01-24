#' Detach packages, but not base
#'
#' @return
#' @export
#'
#' @examples
#' detach_pkgs()
detach_pkgs <- function() {
  suppressWarnings(
    sapply(paste('package:',names(sessionInfo()$otherPkgs), sep = ""),
           detach,character.only = TRUE,unload = TRUE))
  message("All packages detached (basic packages are ignored).")
}
