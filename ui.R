#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#


library(shiny)
shinyUI(fluidPage(
  titlePanel("Predict Quarter Mile Time from MPG"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
      checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
      checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE)
    ),
    # ...
      
    # ...
    mainPanel(
      plotOutput("plot1"),
      h3("Predicted Quarter Mile Time from Model 1:"),
      textOutput("pred1"),
      h3("Predicted Quarter Mile Time from Model 2:"),
      textOutput("pred2")
    )
  )
))

