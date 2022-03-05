#' @title Which values are missing?
#'
#' @description This function returns index of elements which are missing.
#'
#' @param x Vector to find missing elements
#'
#' @return Index of elements missing
#' @examples
#' l = c(0, 1, NA, 3, 4, 5)
#' which_na(l)
#' @export

which_na = function(x)
{
   return(which(is.na(x)))
}
