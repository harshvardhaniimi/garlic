#' @title ggserif()
#'
#' @description This is a ggplot() theme with serif fonts and directed arrows.
#'
#' @param base_size Base size of the plot. It can be modified but I usually do not touch it.
#'
#' @return NULL The function doesn't return any value.
#' @examples
#' # Set theme globally by
#' ggplot2::theme_set(ggserif())
#'
#' # Or use it for a single plot
#' ggplot2::ggplot(iris, ggplot2::aes(x = Sepal.Length, y = Sepal.Width, colour = Species)) +
#' ggplot2::geom_point() +
#' ggplot2::theme_set(ggserif())
#' @export
#' @importFrom dplyr "%>%"
#' @importFrom ggplot2 "%+replace%" "aes" "geom_point"


ggserif = function(base_size = 14) {
   # See https://community.rstudio.com/t/could-not-find-function-replace-during-build-package/65370/3
   '%+replace%' = ggplot2::'%+replace%'
   ggplot2::theme_minimal(base_size = base_size) %+replace%
      ggplot2::theme(
         # Specify plot title
         plot.title = ggplot2::element_text(
            size = ggplot2::rel(1),
            face = "bold",
            family = "serif",
            margin = ggplot2::margin(0, 0, 5, 0),
            hjust = 0
         ),
         # Specifying grid and border
         panel.grid.minor = ggplot2::element_blank(),
         panel.border = ggplot2::element_blank(),
         # Specidy axis details
         axis.title = ggplot2::element_text(
            size = ggplot2::rel(0.85),
            face = "bold",
            family = "serif"
         ),
         axis.text = ggplot2::element_text(size = ggplot2::rel(0.70), family = "serif"),
         axis.line = ggplot2::element_line(
            color = "black",
            arrow = ggplot2::arrow(length = ggplot2::unit(0.3, "lines"),
                          type = "closed")
         ),
         # Specify legend details
         legend.title = ggplot2::element_text(
            size = ggplot2::rel(0.85),
            face = "bold",
            family = "serif"
         ),
         legend.text = ggplot2::element_text(
            size = ggplot2::rel(0.70),
            face = "bold",
            family = "serif"
         ),
         legend.key = ggplot2::element_rect(fill = "transparent", colour = NA),
         legend.key.size = ggplot2::unit(1.5, "lines"),
         legend.background = ggplot2::element_rect(fill = "transparent", colour = NA),
         # Remove default background
         strip.background = ggplot2::element_rect(fill = "#17252D", color = "#17252D"),
         strip.text = ggplot2::element_text(
            size = ggplot2::rel(0.85),
            face = "bold",
            family = "serif",
            color = "white",
            margin = ggplot2::margin(5, 0, 5, 0)
         )
      )
}
