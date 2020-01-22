#' @title Fast Centering and Scaling of Matrices
#'
#' @description Does the same thing as \code{scale(x)}, but faster.
#'
#' @details Uses \code{\link[matrixStats]{colSds}} from the
#'   \code{matrixStats} package.
#'
#' @param x A numeric matrix; \code{is.matrix(x)} should be \code{TRUE}.
#'
#' @return A matrix in which the columns are centered to have zero
#' mean, and they are also scaled to have standard deviation of 1.
#' 
#' @export
#' 
scale_faster <- function (x) {
  a <- colMeans(x)
  b <- matrixStats::colSds(x)
  x <- t(t(x) - a)
  x <- t(t(x) / b)
  return(x)
}
