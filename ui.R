shinyUI( pageWithSidebar( 
  headerPanel("Simple Calculator"), 
  
  sidebarPanel( 
    h3("Instructions"),
    p("Input any three integers ranging from 1-50 and calculate the Mean, Median, Sum, Minimum, or Maximum."),
    numericInput('Input1', 'Number1',0, min = 1, max = 50, step = 1),
    numericInput('Input2', 'Number2', 0, min = 1, max = 50, step = 1),
    numericInput('Input3', 'Number3', 0, min = 1, max = 50, step = 1),
    selectInput("operation", label = h3("Operation"), choices = list("SUM" = 1, "MEAN" = 2, "MEDIAN" = 3, "MAX"= 4, "MIN" = 5, selected = 1))        
  ),  
  mainPanel( 
    h2("Input any three integers ranging from 1-50 and calculate the Mean, Median, Sum, Minimum, or Maximum."), 
    h3('Result is:-'),
    verbatimTextOutput("results") 
  ) 
) 
) 
