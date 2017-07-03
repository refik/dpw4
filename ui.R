library(shiny)
library(dplyr)
library(leaflet)
library(DT)
library(knitr)

shinyUI(fluidPage(
  # Application title
  titlePanel("NOAA Atlantic Hurricanes"),
  
  fluidRow(column(12, wellPanel(
    selectInput(
      "storm_name",
      label = "Storm Name",
      choices = {
        storms %>% pull(name) %>% unique()
      },
      selected = "Katrina"
    ),
    
    span("Selected storm will be shown on the map and data pane.")
  ))),
  fluidRow(
    column(
      6,
      
      h3("Storm Occurances Map"),
      span(
        "Selected storms measured occurances for every 6 hours are shown in the map. The circles are for showing observations. Higher wind speed in knots are shown with darker red color."
      ),
      br(),
      leafletOutput("map", width = 600, height = 400)
      
    ),
    column(
      6,
      h3("Storm Occurance Data"),
      span(
        "Here, more information about the selected storm is shown. These information include the time, location, wind speed and pressure."
      ),
      br(),
      DT::dataTableOutput("map_data")
    )
  )
))
