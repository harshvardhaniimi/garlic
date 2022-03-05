#' @title Removing Rows Based on Missing Values in a Column
#'
#' @description Sometimes, I do not want to na.omit() because it will treat all features equally. I
#' want to check values only for one column, while removing those observations.
#'
#' @param df Data frame to remove observations from
#' @param colname Column name to check for missing values
#'
#' @return Data frame with no missing values in column colname
#'
#' @export
#' @importFrom dplyr "%>%"
#'
#'
#'

na_rm_feature = function(df, colname)
{
   nas = which(is.na(df[,colname]))
   df = df[-nas, ]
   return(df)
}
