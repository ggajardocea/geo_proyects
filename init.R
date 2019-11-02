# Opciones útiles ----------------------------------------------------------

options("h2o.use.data.table" = TRUE)
options(stringsAsFactors = FALSE)
options(java.parameters = "-Xmx4096m")
options(dplyr.width = Inf) 
Sys.setenv(TZ='GMT')
if( "data.table" %in% rownames(installed.packages()) ){
        data.table::setDTthreads(0)
}
if( "tidyverse" %in% rownames(installed.packages()) ){
        options(tidyverse.quiet = TRUE)
}

# Proyect Parameters ------------------------------------------------------

project.src.path = paste0(getwd(),"/") # Si se pone rstudioapi::, solo se puede usar desde rstudio, no desde shiny
project.files.path = paste0(project.src.path,"files/")
project.name = basename(project.src.path)

# Instalar paquete personal -----------------------------------------

if(!require("grrr")){
        if( !"devtools" %in% rownames(installed.packages()) ){
                install.packages("devtools")
        }
        print("Instalando grrr...")
        devtools::install_github("https://github.com/ggajardocea/grrr")
        library(grrr)
}

# Configuracion segun OS --------------------------------------------------

if(version$os == "mingw32"){
        # Hacer si es Windows
}else{
        #Cosas que pasan cuando corre en linux
}

# Source custom functions  ------------------------------------------------

sourceDir("functions", printBool = F)
