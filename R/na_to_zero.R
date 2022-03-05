#' @title Convert missing values to zero
#'
#' @description This function converts missing values in a vector to zero.
#'
#' @param x Vector
#'
#' @return y Manipulated vector
#' @examples
#' iris$Sepal.Width[2] = NA
#' na_to_zero(iris$Sepal.Width) %>%
#'     head()
#' @export
#' @importFrom dplyr "%>%"

na_to_zero = function(x)
{
   x = ifelse(is.na(x), 0, x)
   return(x)
}
