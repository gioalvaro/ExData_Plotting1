household_power_consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", stringsAsFactors=FALSE)
household_power_consumption <- household_power_consumption[(household_power_consumption$Date == '1/2/2007')|(household_power_consumption$Date == '2/2/2007'),]
household_power_consumption$Date <- as.Date(household_power_consumption$Date, "%d/%m/%Y")
household_power_consumption$DateTime <- as.POSIXct(paste(household_power_consumption$Date, household_power_consumption$Time), format="%Y-%m-%d %H:%M:%S")
with(household_power_consumption,{
  plot(DateTime,Sub_metering_1,type='l', col='black', ylab='Energy sub metering', xlab='', ylim=c(0,38))
  lines(DateTime,Sub_metering_2,type='l',col='red')
  lines(DateTime,Sub_metering_3,type='l',col='blue')
  legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), lty=1, col=c('black','red','blue'), bty='n')
})
dev.copy(png,'plot3.png')
dev.off()