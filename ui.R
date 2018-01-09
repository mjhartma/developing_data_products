library(shiny)
library(shinythemes)

shinyUI(
  ui = tagList(
  shinythemes::themeSelector(),
  navbarPage(
    "Conversion of Temperature",
    #theme = shinytheme("paper"),
    tabPanel(
      "Explanation",
      img(src='temperature.PNG')
    ),
    
    tabPanel("Calculator",
    sidebarPanel(
      numericInput('temperature', 'Enter Temp in Fahrenheit', 70, min = -100, max = 150, step = 5
      ),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Conversion Tool'),
      h5('You entered:'),
      verbatimTextOutput("inputValue"),
      h5('Which results in a Celsius temperature of:'),
      verbatimTextOutput("prediction"),
      img(src='temp_table.PNG')
    )
    )
  )
)
)