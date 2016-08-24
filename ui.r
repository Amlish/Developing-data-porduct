library(shiny)

# Define UI for application that draws a box plot
shinyUI(fluidPage( 
  
  titlePanel("Plotting a Boxplot for the Iris Dataset"),
  
  
  helpText("This application uses to creat a boxplot to show the difference between",
           "iris species.  You may  use the radio button to the left to choose the variable you want to display."),
  
  # Sidebar with a radio box to input which trait will be plotted
  sidebarLayout(
    sidebarPanel(
      radioButtons("variable", #the input variable that the value will go into
                   "Choose a variable  to display:",
                   c("Sepal.Length",
                     "Sepal.Width",
                     "Petal.Length",
                     "Petal.Width")
      )),
    
    # Show a plot of the generated distribution
    mainPanel(plotOutput("boxPlot")
    )
  )
))