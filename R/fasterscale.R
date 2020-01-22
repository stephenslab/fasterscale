#' @export
scale_faster <- function (x) {
  a <- colMeans(x)
  b <- matrixStats::colSds(x)
  x <- t(t(x) - a)
  x <- t(t(x) / b)
  return(x)
}
