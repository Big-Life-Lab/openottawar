# Sample function call
#
# get_open_ottawa(url_end = "covid-19-hospitalization-data-for-ottawa-residents", file_dest = paste0(getwd(), "/new_data.xlsx"))


get_open_ottawa <- function(url_end, file_dest = paste0(getwd(), "/new_data.xlsx")) {
  data_info <- httr::GET(paste0("https://opendata.arcgis.com/api/v3/datasets?filter%5Bslug%5D=ottawa%3A%3A",url_end))
  response_content <- httr::content(data_info, "parsed")
  data_id <- response_content$data[[1]]$id
  # Find href from link
  download.file(
    url = paste0("https://www.arcgis.com/sharing/rest/content/items/",data_id,"/data"),
    destfile = file_dest,
    method = "auto",
    mode = "wb"
  )
}

