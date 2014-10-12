library(dplyr)
library(lubridate)
project1 <- read.delim("/Users/Z/Documents/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
project1$Date <- as.Date(project1$Date, format="%d/%m/%Y")

# Plot 2
p1 <- filter(project1, Date == "2007-02-01" | Date == "2007-02-02")
p1 <- mutate(p1, DateTime = paste(Date,Time))
p1$DateTime <- as.POSIXct(p1$DateTime)
plot(p1$Global_active_power~p1$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.copy(png, file="/Users/Z/Documents/Coursera/Exploratory Data Analysis/plot2.png", height=480, width=480)
dev.off()