shortcut_folder <- function(input = FALSE) {
  if (input) {
    fldr <- choose.dir()
    if (is.na(fldr)) stop("No folder selected, stopping.")
  } else {
    fldr <- file.path(Sys.getenv("USERPROFILE"), "Desktop", "seastar")
  }
  
  if (!dir.exists(fldr)) {
    dir.create(fldr, recursive = TRUE)
  }
  
  scripts <- list.files(system.file(package = "seascripts", path = "scripts"))
  

  invisible(lapply(scripts, shortcut_vbs, folder = fldr))
  
  message("seastar shortcuts created in:\n", fldr)
}
