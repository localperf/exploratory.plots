
#-- exploratory data analysis

#-- plot3.r 

source ("get_data.r")


data = get.data()

#---------------------------------------------------------------------

ts = data$timestamp

png ("plot3.png", height = 480, width = 480)

plot (ts, data$Sub_metering_1, col = "black", type = "l", 
      xlab = "",
      ylab = "Energy sub metering")

lines (ts, data$Sub_metering_2, col = "red")
lines (ts, data$Sub_metering_3, col = "blue")
legend ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
        lty = 1,
        col = c("black", "red", "blue"))

dev.off()