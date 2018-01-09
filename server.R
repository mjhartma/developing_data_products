library(shiny)

convertTemp <- function(temperature) (temperature - 32) * 5 / 9

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$temperature})
    output$prediction <- renderPrint({convertTemp(input$temperature)})
  }
)