
library (lubridate)

get.data = function () {
  setwd("d://coursera//exploratory")

  data = read.table( "household_power_consumption.txt", header=T, sep = ";", as.is = T, na.strings = "?")
  head(data)

  data$date = as.Date(data$Date, format = "%d/%m/%Y")
  data$date = as.POSIXlt(data$date)

  head(data)

  data$year = data$date$year + 1900

  table(data$year)

  data$month = data$date$mon + 1
  head(data)

  data$day = data$date$mday
  head(data)

  
  summary(data)

  data[,3] = as.numeric(data[,3])
  data[,4] = as.numeric(data[,4])

  data[,5] = as.numeric(data[,5])
  data[,6] = as.numeric(data[,6])

  data[,7] = as.numeric(data[,7])

  data[,8] = as.numeric(data[,8])
  data[,9] = as.numeric(data[,9])
  str(data)


  data = data[data$year == 2007,]
  data = data[data$month == 2,]
  data = data[data$day <= 2,]
  print (table(as.Date(data$date)))

  
  data$timestamp = parse_date_time(paste(data$Date, data$Time), orders = "dmy hms")
  
  data
  }

