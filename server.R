library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
   
   	curve(dnorm(x), from = -4, to = 4, col = "blue", n = 200, xlim = c(-4,4))
 
 	curve(dt(x, input$df), from = -4, to = 4, add = TRUE, col = "red", n = 200, xlim = c(-4,4))

 
   
  })
  
})

