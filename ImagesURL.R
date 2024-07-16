library(rvest)
library(httr)

# Definir la URL de la página
url <- "Insert URL"

# Realizar la solicitud HTTP y analizar el contenido HTML
page <- read_html(url)

# Obtener todos los elementos de imagen (<img>) de la página
image_elements <- page %>%
  html_nodes("img")

# Obtener los enlaces (URLs) de las imágenes
image_urls <- html_attr(image_elements, "src")

# Filtrar solo los enlaces que apunten a imágenes y asegurar que sean URLs completas
image_urls <- image_urls[grep("\\.(jpg|jpeg|png|gif|webp)$", image_urls)]
image_urls <- lapply(image_urls, function(url) {
  if (startsWith(url, "//")) {
    url <- paste("https:", url, sep = "")
  } else if (startsWith(url, "/")) {
    url <- paste(url, sep = "", url)
  }
  return(url)
})

# Directorio donde se guardarán las imágenes
download_dir <- "path/to/Imagenes"

# Crear el directorio si no existe
dir.create(download_dir, showWarnings = FALSE)

# Descargar las imágenes
for (i in seq_along(image_urls)) {
  url <- image_urls[[i]]
  filename <- basename(url)
  filepath <- file.path(download_dir, filename)
  
  # Intentar descargar la imagen
  tryCatch({
    GET(url, write_disk(filepath, overwrite = TRUE))
    cat("Descargando:", filename, "\n")
  }, error = function(e) {
    cat("Error al descargar:", url, "\n")
  })
}
