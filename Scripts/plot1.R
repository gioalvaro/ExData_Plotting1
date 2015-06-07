household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household_power_consumption <- household_power_consumption[(household_power_consumption$Date == '1/2/2007')|(household_power_consumption$Date == '2/2/2007'),]
hist(household_power_consumption$Global_active_power,xlab='Global Active Power (kilowatts)',main='Global Active Power',col='red')
dev.copy(png,'plot1.png')
dev.off()