shortcut_folder <- function(input = FALSE) {
  if (input) {
    # Prefer RStudio's safe directory chooser if available
    if (requireNamespace("rstudioapi", quietly = TRUE) && rstudioapi::isAvailable()) {
      fldr <- rstudioapi::selectDirectory()
      if (is.null(fldr)) stop("No folder selected, stopping.")
    } else {
      # Fall back to base R choose.dir()
      fldr <- choose.dir()
      if (is.na(fldr)) stop("No folder selected, stopping.")
    }
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
