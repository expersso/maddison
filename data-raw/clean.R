library(readxl)
library(dplyr)
library(tidyr)
library(magrittr)
library(countrycode)

url <- "http://www.ggdc.net/maddison/maddison-project/data/mpd_2013-01.xlsx"
tmp <- tempfile(fileext = ".xlsx")
download.file(url, tmp, mode = "wb")

maddison <- read_excel(tmp, skip = 2)
# unlink(tmp)

names(maddison)[1] <- "year"
maddison <- maddison[, !is.na(names(maddison))]

maddison$year %<>% paste0("-01-01") %>% as.Date()

maddison %<>%
  gather(country_original, gdp_pc, -year) %>%
  mutate(country_original = as.character(country_original) %>% str_trim())

maddison$country <- maddison$country_original %>%
  plyr::revalue(c("England/GB/UK" = "UK",
                  "Cape Colony/ South Africa" = "South Africa",
                  "Haïti" = "Haiti"))

maddison$country_original %<>% iconv("utf-8", "ASCII")

maddison$country <- countrycode(maddison$country, "country.name", "country.name")

for(var in c("iso2c", "iso3c", "continent", "region")) {
  maddison[[var]] <- countrycode(maddison$country, "country.name", var)
}

maddison$aggregate <- is.na(maddison$iso2c)
