#' Run Shiny demo app
#'
#' The function \code{run_demo()} launches a Shiny app, which is a GUI wrapper
#' of crippled version of \code{{estudy2}}. This app is developed exclusively
#' for demonstration purposes.
#'
#' The app is run locally.
#'
#' @export
run_demo <- function() {
    app_dir <- system.file("shiny-examples", "estudy2", package = "estudy2")
    shiny::runApp(app_dir, display.mode = "normal")
}
