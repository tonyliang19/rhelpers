#' Creates a directory not existed yet, otherwise do nothing
#' @param out output directory to create
#' @noRd
create_dir <- function(out) {
  if (!(dir.exists(out))) {
    print(paste(out, "not exists yet! Creating it now"), sep=" ")
    dir.create(out)
    print(paste(out, "created"), sep=" ")
  } else {
    # does nothing
  }
}
