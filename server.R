library(shiny)
library(dplyr)
library(leaflet)
library(DT)
library(knitr)

shinyServer(function(input, output) {
  storms_shiny <- reactive({
    storms %>% 
      filter(name == input$storm_name)
  })
  
  qpal <- colorQuantile("Reds", storms$wind, n = 7)
  
  output$map <- renderLeaflet({
    leaflet(storms_shiny()) %>% 
      addProviderTiles(providers$Stamen.Toner) %>% 
      addCircles(lng = ~ long, lat = ~ lat, color = ~ qpal(wind), fill = TRUE, fillOpacity = 1, weight = 1, radius = 50000)
  })
  
  output$map_data <- DT::renderDataTable({
    storms_shiny() %>% 
      select(-ts_diameter, -hu_diameter, -status, -category) %>% 
      datatable(rownames = FALSE)
  })
})
