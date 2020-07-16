symbols <- TTR::stockSymbols()[, 1]

ui <- shiny::fluidPage(

    shiny::titlePanel("{estudy2}"),

    shiny::sidebarLayout(
        shiny::sidebarPanel(

            shiny::selectInput(
                "tickers",
                "Securities:",
                symbols,
                multiple = TRUE
            ),

            shiny::dateRangeInput("start_end", "Start and end date:")
        ),
        shiny::mainPanel(
            shiny::tabsetPanel(
                type = "tabs",
                shiny::tabPanel(
                    "Plots",
                    shiny::plotOutput("plots")
                ),
                shiny::tabPanel(
                    "Parametric tests",
                    shiny::tableOutput("parametric")
                ),
                shiny::tabPanel(
                    "Nonparametric tests",
                    shiny::tableOutput("nonparametric")
                )
            )
        )
    )
)
