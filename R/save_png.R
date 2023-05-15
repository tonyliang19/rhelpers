#' Save base R plots to png
#'
#' @param name "Name of the plot
#' @param img_dir "Output directory of where to store the outputs"
#'
#' @return *.png
#' @export
#'
# #'  @examples
#' @importFrom grDevices png
save_png <- function(name,
                     img_dir = NULL) {
  # saves base R plot to img_dir/filename.png
  # default width and height is 350
  img_dir <- NULL
  if (is.null(img_dir)) {
    stop("You did not provide a img_dir argument")
  }
  out <- here::here(img_dir)
  rhelpers:::create_dir(out)
  fullname <- paste0(out, "/", name, ".png")
  grDevices::dev.copy(device = png, fullname)
  grDevices::dev.off()
  print(paste0(name, " saved at ", fullname))

}