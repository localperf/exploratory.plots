
#-- exploratory data analysis

#-- plot2.r 

source ("get_data.r")


data = get.data()

#---------------------------

head(data)
tail(data)

png ("plot2.png", width=480, height = 480)

plot (data$timestamp, data$Global_active_power,
      type = "l",
      xlab = "",
      ylab = "Global Active Power (kilowatts)"
      )

dev.off()
