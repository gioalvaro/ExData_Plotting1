household.power.consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household.power.consumption <- household.power.consumption[(household.power.consumption$Date == '1/2/2007')|(household.power.consumption$Date == '2/2/2007'),]
household.power.consumption$Date <- as.Date(household.power.consumption$Date, "%d/%m/%Y")
household.power.consumption$DateTime <- as.POSIXct(paste(household.power.consumption$Date, household.power.consumption$Time), format="%Y-%m-%d %H:%M:%S")
with(household.power.consumption, plot(DateTime,Global_active_power, type='l', ylab='Global Active Power (kilowatts)', xlab=''))
dev.copy(png,'plot2.png',width=480,height=480,units='px')
dev.off()
