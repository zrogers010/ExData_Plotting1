library(lubridate)
project1 <- read.delim("/Users/Z/Documents/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
project1$Date <- as.Date(project1$Date, format="%d/%m/%Y")


# Plot 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
plot(p1$Global_active_power~p1$DateTime, type="l", ylab="Global Active Power", xlab="")
plot(p1$Voltage~p1$DateTime, type="l", ylab="Voltage", xlab="datetime")
plot(p1$Sub_metering_1~p1$DateTime, type="l", ylab="Energy sub metering", xlab="")
lines(p1$Sub_metering_2~p1$DateTime,col='Red')
lines(p1$Sub_metering_3~p1$DateTime,col='Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(p1$Global_reactive_power~p1$DateTime, type="l", ylab="Global_reactive_power",xlab="datetime")

dev.copy(png, file="/Users/Z/Documents/Coursera/Exploratory Data Analysis/plot4.png", height=480, width=480)
dev.off()
