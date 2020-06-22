# openottawar

An R package to retreive CSV data from [Open Ottawa](https://open.ottawa.ca).

This minimal package:

- Retrieves a CVS file from [https://open.ottawa.ca](https://open.ottawa.ca).
- Returns the file as an XLSX file.

# Installation

The openottawar package is currently avaialable only on GitHub. Download and install the package using `remotes` or `devtools`.

```
# install.packages("remotes")
remotes::install_github("big-life-lab/openottawar")
```

# Usage

This package downloads CSV data on the Open Ottawa website and saves it as an XLSX. CSV data is identifed using the website URL ending. 

For example, the covid-19 hospital data for Ottawa residents is found at:
`https://open.ottawa.ca/datasets/covid-19-hospitalization-data-for-ottawa-residents/data'

```
# Retrive covid-19 hosptial data for Ottawa residents
library(openottawar)

# This downloads the data from hospital data and saves it as new_data.xlsx
get_open_ottawa(url_end = "covid-19-hospitalization-data-for-ottawa-residents", file_dest = paste0(getwd(), "/new_data.xlsx"))
```
# Licence

The code of this package is licenced under MIT licence. Data retrieved from Open Ottawa is subject to Open Ottawa [data licence](https://ottawa.ca/en/city-hall/get-know-your-city/open-data#open-data-licence-version-2-0).
# Contributing

[Issues](https://github.com/big-life-lab/openottawar/issues) and [Pull requests](https://github.com/big-life-lab/openottawar/pulls) are appreciated.


