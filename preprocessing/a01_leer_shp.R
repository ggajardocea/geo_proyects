
# Leer los archivos geográficos -------------------------------------------
source("init.R")
library("shiny")
library("leaflet")
library("sf")


# Probar con las regiones -------------------------------------------------
regiones <- read_sf(dsn = "data/input/maps/regiones/regiones.shp")
saveRDS(regiones, "data/input/maps/regiones/regiones.rds")

provincias <- read_sf(dsn = "data/input/maps/provincias/provincias.shp")
saveRDS(provincias, "data/input/maps/provincias/provincias.rds")

comunas <- read_sf(dsn = "data/input/maps/comunas/comunas.shp")
saveRDS(comunas, "data/input/maps/comunas/comunas.rds")



# Hacer un ejemplo con leaflet --------------------------------------------
leaflet() %>%
        addProviderTiles("CartoDB") %>%
        addPolygons(data = regiones,weight=2,col = 'black',fillOpacity = 0.2)
