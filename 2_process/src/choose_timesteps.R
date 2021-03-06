choose_timesteps <- function(ind_file, dates) {
  timesteps <- seq(as.POSIXct(dates$start, tz = "UTC"), as.POSIXct(dates$end, tz = "UTC"), by = 'days')
  data_file <- as_data_file(ind_file)
  saveRDS(timesteps, data_file)
  gd_put(ind_file, data_file)
}
