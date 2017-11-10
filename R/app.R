#' Start ctmm web app
#'
#' @export
#'
app <- function() {
  appDir <- system.file("app", package = "ctmmweb")
  if (appDir == "") {
    stop("Could not find app directory. Try re-installing `ctmmweb`.", call. = FALSE)
  }
  shiny::runApp(appDir, display.mode = "normal")
}
