# Image Extractor

## Description
**Image Extractor** is an R script that utilizes the rvest and httr libraries to extract and download all images from a specified URL. This script functions similarly to browser extensions in Chrome or Firefox that enable bulk image downloads from websites.

## Usage Instructions
1. **Set the URL**:
   - Insert the URL of the webpage from which you want to extract images:
   ```R
   url <- "Insert URL"

Define Image Type:

    Choose the types of image extensions to download. By default, the script filters for common image formats like JPG, JPEG, PNG, GIF, and WebP:

    image_urls <- image_urls[grep("\\.(jpg|jpeg|png|gif|webp)$", image_urls)]

Download Directory:

    Specify the directory where images will be saved. Create the directory if it doesn't exist:

    download_dir <- "C:/Users/EUCLID/Documents/Imagenes"
    dir.create(download_dir, showWarnings = FALSE)

Run the Script:

    Execute the script from RStudio or R command line to start downloading images:

    source("ImageExtractor.R")

# Notes

- Some websites may restrict access to scripts, resulting in 403 errors.
- Ensure proper permissions and compliance with website terms of service when extracting images.


