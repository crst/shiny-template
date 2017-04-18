require(jsonlite)
require(shiny)

server <- function(input, output) {
    output$distPlot <- renderPlot({
        hist(rnorm(input$obs), col='darkgray', border='white')
    })
}

ui <- fluidPage(
    sidebarLayout(
        sidebarPanel(
            sliderInput('obs', 'Number of observations:', min=10, max=500, value=100)
        ),
        mainPanel(plotOutput('distPlot'))
    )
)

config <- fromJSON('config.json')
app <- shinyApp(ui=ui, server=server)
runApp(app, host=config$host, port=config$port)
