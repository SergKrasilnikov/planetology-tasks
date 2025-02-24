library(ggplot2)
library(ggmap)
library(maps)
library(mapdata)

# Read the data with (readxl)
library(readxl)
readxl::excel_sheets("h:/Learning/Coding/other/work_tasks/C_N_global/r_mapping/project/climate_data.xlsx")
climate <- read_excel(path = "h:/Learning/Coding/other/work_tasks/C_N_global/r_mapping/project/climate_data.xlsx", sheet = "sheet")

#make world map base
world <- map_data("world")
ggplot() + geom_polygon(data = world, aes(x=long, y = lat, group = group)) + 
  coord_fixed(1.3)

#mapping of data
ggplot() +
  geom_map( #map base
    data = world, map = world,
    aes(long, lat, map_id = region),
    color = "white", fill = "lightgray", size = 0.1
  ) +
  geom_point( #adding of points
    data = climate,
    aes(longitude, latitude, shape = Ecosystem, color = Ecosystem),
    alpha = 0.7,
    size = 3
  ) +
  xlim(-155, 175) + #cutting of map
  ylim(-50, 70) +
  scale_shape_manual(values = c(16, 17, 18)) +
  scale_color_manual(values = c("darkorange", "deepskyblue4", "chartreuse4")) +
  xlab("Longitude") + ylab("Latitude") +
  scale_fill_viridis_d(option = "plasma") +
  theme(panel.background = element_rect(fill = "white"), #correction of theme
        panel.border = element_rect(fill = NA),
        axis.title.x = element_text(size=14),
        axis.title.y = element_text(size=14),
        
        legend.position = "top",
        legend.text = element_text(size=13),
        legend.title = element_text(size=14),

        axis.text.x=element_text(size=14),
        axis.text.y=element_text(size=14)
  ) +
  coord_fixed(1.2)




#online mapping
library(leaflet) # рисование карт
library(dplyr)   # оператор %>% (pipe) и функции манипуляций с данными
m <- leaflet() %>% addTiles()
climate <- climate %>%
  mutate(popup_info=paste("№", NO, "<br/>", "Latitude:", latitude, "<br/>", #add description to popup
                          "Longitude:", longitude, "<br/>", "Location:", Location, "<br/>",
                          "Ecosystem and climate:", Ecosysteme_with_climate, "<br/>",
                          "Ecosystem:", Ecosystem, "<br/>", "Soil type:", SoilType, "<br/>",
                          "MAP (mm):", MAP, "<br/>", "MAT:", MAT, "<br/>", "Reference:", Authors))

pal = colorFactor(palette = c("darkorange", "deepskyblue4", "chartreuse4"),
                  domain = climate$Ecosystem)

m <- leaflet() %>%
  addTiles() %>%
  addCircleMarkers(data = climate, lat = ~latitude, lng = ~longitude,
                   color = ~pal(Ecosystem),
                   radius = ~3, popup = ~popup_info,
                   label = paste(climate$Ecosystem)) %>%
  addLegend(position = "bottomright",
            pal = pal,
            values = climate$Ecosystem,
            #colors = climate$Ecosystem("darkorange", "deepskyblue4", "chartreuse4"),
            #labels = climate$Ecosystem("Forest", "Grassland", "Shrubland"),
            title = "Ecosystems", opacity = 0.8)
m










#ADDITIONAL MAPS
# save the widget in a html file if needed. Why it could be open only by Firefox?
library(htmlwidgets)
library(htmltools) # вспомогательные функции при генерации web content'а
# Load the library
library(leaflet)

saveWidget(m, file=paste0( getwd(), "/backgroundMapTile.html", width="1000px"))

# Background 1: NASA
m <- leaflet(data=climate) %>% 
  addTiles() %>% 
  setView( lng = 2.34, lat = 48.85, zoom = 5 ) %>% 
  addProviderTiles("NASAGIBS.ViirsEarthAtNight2012")
  #addTiles() %>% 
  #clearBounds( ) %>%
  addMarkers(lng=climate$longitude, lat=climate$latitude,
           popup="Ecosystem") 
m

# Background 2: World Imagery
m <- leaflet() %>% 
  addTiles() %>% 
  setView( lng = 0, lat = 0, zoom = 2 ) %>% 
  addProviderTiles("Esri.WorldImagery")
m
# save the widget in a html file if needed.
#library(htmlwidgets)
#saveWidget(m, file=paste0( getwd(), "/backgroundMapTile.html", width="1000px"))


# Background 3: WorldTerrain
m <- leaflet() %>% 
  addTiles() %>% 
  setView( lng = 0, lat = 0, zoom = 2 ) %>% 
  addProviderTiles("Esri.WorldTerrain")
m

# Background 4: WorldTopoMap
m <- leaflet() %>% 
  addTiles() %>% 
  setView( lng = 0, lat = 0, zoom = 2 ) %>% 
  addProviderTiles("Esri.WorldTopoMap")
m