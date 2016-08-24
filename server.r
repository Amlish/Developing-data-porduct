library(shiny)
library(ggplot2)

# Define server logic required to draw a boxplot
shinyServer(function(input, output) {
  

  output$boxPlot <- renderPlot({
    
    # set up the plot
    plot1 <- ggplot(data = iris,aes_string(x="Species",
                            y=input$variable,
                            fill="Species"
                 )
    )
    
    # draw the boxplot for the specified variable
    plot1 + geom_boxplot()
  })
})