#' Convert p-values to asterik/dot notation
#'
#' @param pval numeric.
#'
#' @return A character string.
#' @export
#'
#' @examples
#' p_stars(0.0002)
p_stars <- function(pval)
{
  unclass(
    symnum(pval, corr = FALSE, na = FALSE,
      cutpoints = c(0, 0.001, 0.01, 0.05, 0.1, 1),
      symbols = c("***", "**", "*", ".", " "))
  )
}
