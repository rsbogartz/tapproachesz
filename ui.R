library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("The t curve and the normal z curve"),
  
  # Sidebar with a slider input for the number of means
  sidebarLayout(
    sidebarPanel(
      sliderInput("df",
                    "Degrees of Freedom:",
                  min = 1,
                  max = 40,
                  value = 25)
   
    ),
    
 

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
   )
 ))
