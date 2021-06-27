library(shiny) 
library(tidyverse)

shiny::fluidPage(
    shiny::fluidRow(
        shiny::column(
            5, 
            shiny::sliderInput('mpg', 'MilePerGallon', min=10, max=50, value=27),
            ), 
        shiny::column(
            5, 
            shiny::plotOutput('data_plot'),
            )
    )
)