#' Start ctmm web app
#'
#' @param data Data to be loaded with app. Could be path to csv file, .rds file; `ctmm` telemetry object/list. Default `NULL` will not load any data.
#'
#' @export
#'
app <- function(data = NULL) {
  appDir <- system.file("app", package = "ctmmweb")
  if (appDir == "") {
    stop("Could not find app directory. Try re-installing `ctmmweb`.", call. = FALSE)
  }
  shiny::runApp(appDir, display.mode = "normal")
}
