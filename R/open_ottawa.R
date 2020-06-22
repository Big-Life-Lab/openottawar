#' Get Open Ottawa Data
#'
#' Function used to download single xlsx files from open ottawa
#'
#' @param url_end the part of the url after https://open.ottawa.ca/datasets/
#' @param file_dest the location and name of the file to save make sure it ends with .xlsx
#' @param load_data should the data be loaded into a data table
#'
#' @examples
#' tmp <- get_open_ottawa(url_end = "covid-19-hospitalization-data-for-ottawa-residents", file_dest = paste0(getwd(), "/new_data.xlsx"))
#'
#' @export
get_open_ottawa <-
  function(url_end,
           file_dest = paste0(getwd(), "/new_data.xlsx"),
           load_data = TRUE) {
    data_info <-
      httr::GET(
        paste0(
          "https://opendata.arcgis.com/api/v3/datasets?filter%5Bslug%5D=ottawa%3A%3A",
          url_end
        )
      )
    extentions <- c(".csv", ".kml", ".zip")
    response_content <- httr::content(data_info, "parsed")
    data_id <- response_content$data[[1]]$id
    # Find href from link
    download.file(
      url = paste0(
        #"https://www.arcgis.com/sharing/rest/content/items/",
        "https://opendata.arcgis.com/datasets/",
        data_id,
        "_0.csv"
      ),
      destfile = file_dest,
      method = "auto"
    )

    if (load_data) {
      if(grepl(".xlsx", file_dest)){
        new_data <- readxl::read_excel(file_dest)
      }else if(grepl(".csv", file_dest)){
        new_data <- read.csv(file_dest)
      }

      return(new_data)
    }

  }
