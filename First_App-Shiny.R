library(shiny)
UserInterface = fluidPage(
    titlePanel("My First App"),
    
    sidebarPanel(
        textInput("txtInput", "Enter Here"),
    ),
    mainPanel(
        paste("You are typing..."),
        textOutput("txtOutput")
    )
)

server_here = shinyServer(function(input, output){
    output$txtOutput = renderText({
        paste(input$txtInput)
    })
    })

shinyApp(ui=UserInterface, server = server_here )
