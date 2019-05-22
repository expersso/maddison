library(countrycode)
library(readxl)

url <- "https://www.rug.nl/ggdc/historicaldevelopment/maddison/data/mpd2018.xlsx"
tmp <- tempfile(fileext = ".xlsx")
download.file(url, tmp, mode = "wb")

maddison <- readxl::read_excel(tmp, sheet = "Full data")
unlink(tmp)

# doesn't convert "Côte d'Ivoire" properly
# maddison$country <- iconv(maddison$country, "UTF-8", "ASCII")

maddison$country <- countrycode::countrycode(maddison$country, "country.name", "country.name")

for (i in c("iso2c", "iso3c", "continent", "region")) {
  maddison[[ i ]] <- countrycode::countrycode(maddison$country, "country.name", i)
}

# former countries with no ISO country code

# unique(maddison$country[ is.na(maddison$iso2c)     ])
# unique(maddison$country[ is.na(maddison$iso3c)     ])
# unique(maddison$country[ is.na(maddison$continent) ])
# unique(maddison$country[ is.na(maddison$region)    ])

# Czechoslovakia
# (imputed from Czechia and Slovakia)
maddison$continent[ maddison$country == "Czechoslovakia" ] <- "Europe"
maddison$region[ maddison$country == "Czechoslovakia" ] <- "Eastern Europe"

# Yugoslavia
# (imputed from Bosnia & Herzegovina and Serbia)
maddison$continent[ maddison$country == "Yugoslavia" ] <- "Europe"
maddison$region[ maddison$country == "Yugoslavia" ] <- "Southern Europe"
