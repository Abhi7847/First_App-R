library(shiny)
ui <- shinyUI(fluidPage(
    mainPanel(
        numericInput("p0", "Enter Weight (in) Here:" ,0, min = 0, max = 200),
        numericInput("p1", "Enter Height (in meter) Here:", 0, min = 0, max = 3),
        textOutput("a"))
))
server <- shinyServer(function(input, output,session){
    output$a <- renderText({
        p0 <- input$p0
        p1 <- input$p1
        alpha <- input$alpha
        power = input$power
        paste("Your BMI is :", (p0/(p1*p1)) )
    })
})
shinyApp(ui = ui, server = server)
