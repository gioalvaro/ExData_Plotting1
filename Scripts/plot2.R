household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household_power_consumption <- household_power_consumption[(household_power_consumption$Date == '1/2/2007')|(household_power_consumption$Date == '2/2/2007'),]
household_power_consumption$Date <- as.Date(household_power_consumption$Date, "%d/%m/%Y")
household_power_consumption$DateTime <- as.POSIXct(paste(household_power_consumption$Date, household_power_consumption$Time), format="%Y-%m-%d %H:%M:%S")
with(household_power_consumption, plot(DateTime,Global_active_power, type='l', ylab='Global Active Power (kilowatts)', xlab=''))
dev.copy(png,'plot2.png')
dev.off()