
#-- exploratory data analysis

#-- plot1.r 

source ("get_data.r")

data = get.data()

png ("plot1.png", width = 480, height = 480)

hist (data$Global_active_power, col = "red", 
      main = "Global Active Power",
      xlab = "Global Active Power (kilowatts)")

dev.off()