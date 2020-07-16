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

    if (!requireNamespace("shiny", quietly = TRUE) ||
        !requireNamespace("shinyjs", quietly = TRUE)) {
        stop(
            paste0("Packages {shiny} and {shinyjs} needed",
                   " for this function to work. Please install it."),
             call. = FALSE
        )
    }

    app_dir <- system.file("shiny_apps", "estudy2", package = "estudy2")
    shiny::runApp(app_dir, display.mode = "normal")
}
