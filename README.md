# ImagesURL
Image Extractor

# Description

Script using rvest and httr libraries,
This script will allow you to insert a URL link and through them you can download all the images that exist within the web page at once.

In the following line, you will have to insert the URL;

url <- "Insert URL"

In this other line, ypu can select which type of extensions will be download, I have done tests with webp;

image_urls <- image_urls[grep("\\.(jpg|jpeg|png|gif|webp)$", image_urls)]

The script works similar to how some Chrome or Firefox extensions work that allow you to download images from a website.

# Notes

- Not all pages have read permissions with a script, showing 403 error.
