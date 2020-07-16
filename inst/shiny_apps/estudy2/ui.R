symbols <- TTR::stockSymbols()[, 1]

ui <- shiny::fluidPage(
    shiny::selectInput(
        "tickers",
        "Securities:",
        symbols,
        multiple = TRUE
    ),
    shiny::dateRangeInput("holiday", "When do you want to go on vacation next?")
)
