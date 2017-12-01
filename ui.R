
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Prediction: Wage as a function of Age"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
            sliderInput("slider_age", "Choose Age?", 18, 80, value = 40)
            
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
            mainPanel(
                    plotOutput("plot1"),
                    h3("Predicted Wage:"),
                    textOutput("pred1")
                  
            )
    )
  )))
