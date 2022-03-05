#' @title Which element is this?
#'
#' @description This function can find observations that satisfy a condition. Typically,
#' they are useful in finding specific elements. It is kind of a wrapper around dplyr’s filter().
#'
#' @param df Data frame to search in
#' @param x condition to search
#' @return Selected data frame
#' @examples
#' which_this(iris, "Sepal.Length > 7")
#' @export
#' @importFrom dplyr "%>%"
#' @importFrom dplyr "filter"
#'
#'

which_this = function(df, x)
{
   dplyr::filter(df, eval(parse(text = x)))
}
