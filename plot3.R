consumption <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, 
                          sep = ";", na.strings="?", 
                          col.names = colnames(read.table("household_power_consumption.txt",
                                                          nrow = 1, header = TRUE, sep=";")));

with(consumption, plot(strptime(paste(consumption$Date, consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), consumption$Sub_metering_1, type="l", xlab = "", ylab = "Energy sub metering"))

with(consumption, lines(strptime(paste(consumption$Date, consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), consumption$Sub_metering_2, col = "red"))

with(consumption, lines(strptime(paste(consumption$Date, consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), consumption$Sub_metering_3, col = "blue"))

legend("topright", col = c("black", "red", "blue"), lty=4, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))