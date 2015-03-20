shinyUI(fluidPage(
    titlePanel("data(faithful)"),
    sidebarLayout(
        inputPanel(
            selectInput("n_breaks", label = "Número de intervalos:",
                        choices = c(10, 20, 35, 50), selected = 20),
            
            sliderInput("bw_adjust", label = "Ajuste del ancho de banda:",
                        min = 0.2, max = 2, value = 1, step = 0.2)
        ),
        mainPanel(
            h3(textOutput("text")),
            plotOutput("plot")
        )
        
    )
))
