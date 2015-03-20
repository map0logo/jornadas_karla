shinyServer(function(input, output) {
    output$text <- renderText({"Gráfico Interactivo"})
    output$plot <- renderPlot({
        hist(faithful$eruptions, probability = TRUE,
             breaks = as.numeric(input$n_breaks),
             xlab = "Duración (minutos)",
             ylab = "Densidad",
             main = "Duración de la erupción de los Geyser")
        
        dens <- density(faithful$eruptions, adjust = input$bw_adjust)
        lines(dens, col = "blue")
    })
})
