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
#' @importFrom here here
save_png <- function(name,
                     img_dir = NULL) {
  # saves base R plot to img_dir/filename.png
  # default width and height is 350
  if (is.null(img_dir)) {
    stop("You did not provide a img_dir argument")
  }
  out <- here::here(img_dir)
  create_dir(out)
  fullname <- paste0(out, "/", name, ".png")
  grDevices::dev.copy(device = png, fullname)
  grDevices::dev.off()
  print(paste0(name, " saved at ", fullname))

}
