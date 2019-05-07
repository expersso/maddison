# maddison 0.2

* Updated to download the Maddison Project Database 2018.

## Breaking changes

* The `year` variable is not converted to Date format anymore.
  To restore the behaviour of maddison 0.1, use

  ```
  maddison$year <- as.Date(paste0(maddison$year, "-01-01"))
  ```

# maddison 0.1

* Initial release.
