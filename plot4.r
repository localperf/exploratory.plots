#-- exploratory data analysis

#-- plot4.r 

source ("get_data.r")


data = get.data()

#---------------------------------------------------------------------

ts = data$timestamp

png ("plot4.png", height = 480, width = 480)

par (mfrow = c(2,2))


plot (data$timestamp, data$Global_active_power,
      type = "l",
      xlab = "",
      ylab = "Global Active Power (kilowatts)"
  )

plot (ts, data$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")



plot (ts, data$Sub_metering_1, col = "black", type = "l", 
      xlab = "",
      ylab = "Energy sub metering")

lines (ts, data$Sub_metering_2, col = "red")
lines (ts, data$Sub_metering_3, col = "blue")
legend ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        lty = 1,
        col = c("black", "red", "blue"),
        bty = "n")

plot (ts, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_Power", type = "l")

dev.off()

