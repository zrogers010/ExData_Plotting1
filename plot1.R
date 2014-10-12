library(dplyr)
library(lubridate)
project1 <- read.delim("/Users/Z/Documents/Coursera/Exploratory Data Analysis/household_power_consumption.txt", sep=";", na.strings="?")
project1$Date <- as.Date(project1$Date, format="%d/%m/%Y")

# Plot1
p1 <- filter(project1, Date == "2007-02-01" | Date == "2007-02-02")
hist(p1$Global_active_power, xlab="Global Active Power (kilowatts)", ylab = "Frequency", col="red", title="Plot1", main="Global Active Power")

dev.copy(png, file="/Users/Z/Documents/Coursera/Exploratory Data Analysis/plot1.png", height=480, width=480)
dev.off()