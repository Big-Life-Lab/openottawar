# openottawar

An R package to retreive CSV data from [Open Ottawa](https://open.ottawa.ca).

This minimal package:

- Retrieves a CVS file from [https://open.ottawa.ca](https://open.ottawa.ca).
- Returns the file as a dataframe as well as saving the file.

# Installation

The openottawar package is currently avaialable only on GitHub. Download and install the package using `remotes` or `devtools`.

```
# install.packages("remotes")
remotes::install_github("big-life-lab/openottawar")
```

# Usage

This package downloads CSV data on the Open Ottawa website and saves it as a CSV. CSV data is identifed using the website URL ending. 

For example, the covid-19 hospital data for Ottawa residents is found at:
`https://open.ottawa.ca/datasets/covid-19-hospitalization-data-for-ottawa-residents'

```
# Retrive covid-19 hosptial data for Ottawa residents
library(openottawar)

# Download hospital data and save it as new_data.csv
new_data <- get_open_ottawa(
    url_end = "covid-19-hospitalization-data-for-ottawa-residents", 
    file_dest = paste0(getwd(), 
    "/new_data.csv"))
```
# Licence

The code of this package is licenced under MIT licence. Data retrieved from Open Ottawa is subject to Open Ottawa [data licence](https://ottawa.ca/en/city-hall/get-know-your-city/open-data#open-data-licence-version-2-0).

# Contributing

[Issues](https://github.com/big-life-lab/openottawar/issues) and [Pull requests](https://github.com/big-life-lab/openottawar/pulls) are appreciated.

# Roadmap

Open Ottawa is changing quickly. We are considering switching to the API format once the site stablizes.
