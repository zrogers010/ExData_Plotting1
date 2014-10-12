library(dplyr)
library(lubridate)
project1 <- read.delim("/Users/Z/Documents/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
project1$Date <- as.Date(project1$Date, format="%d/%m/%Y")

# Plot 3
plot(p1$Sub_metering_1~p1$DateTime, type="l", ylab="Energy sub metering", xlab="")
lines(p1$Sub_metering_2~p1$DateTime,col='Red')
lines(p1$Sub_metering_3~p1$DateTime,col='Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file="/Users/Z/Documents/Coursera/Exploratory Data Analysis/plot3.png", height=480, width=480)
dev.off()

