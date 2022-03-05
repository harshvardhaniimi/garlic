#' @title Open a data frame in MS Excel
#'
#' @description This function takes in a data frame as argument and shows it in Microsoft Excel
#' or any other spreadsheet program like OpenOffice.org. It can also be used with pipes. I found it
#' on Twitter but forgot who tweeted it. If you know, let me know so that I can cite them.
#'
#' @param .data Data frame to show
#' @return The function doesn't return any value (NULL).
#' @examples
#' show_in_excel(iris)
#' @export
#' @importFrom dplyr "%>%"


# Show in Excel Function
show_in_excel = function(.data)
{
   temp = paste0(tempfile(), ".csv")
   utils::write.csv(.data, temp)
   fs::file_show(path = temp)
}
