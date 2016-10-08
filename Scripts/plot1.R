household.power.consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household.power.consumption <- household.power.consumption[(household.power.consumption$Date == '1/2/2007')|(household.power.consumption$Date == '2/2/2007'),]
hist(household.power.consumption$Global_active_power,xlab='Global Active Power (kilowatts)',main='Global Active Power',col='red')
dev.copy(png,'plot1.png')
dev.off()
