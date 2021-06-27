function(input, output, session) {


    data <- shiny::reactive({
        print('Hello')
        mtcars %>% 
            dplyr::filter(mpg < input$mpg)
    })

    output$data_plot <- shiny::renderPlot({
        data() %>% 
            ggplot2::ggplot(ggplot2::aes(mpg, cyl)) + 
            ggplot2::geom_point()
    })

}