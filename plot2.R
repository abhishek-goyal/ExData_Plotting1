consumption <- read.table("household_power_consumption.txt", skip = 66637, nrow = 2880, 
                          sep = ";", na.strings="?", 
                          col.names = colnames(read.table("household_power_consumption.txt",
                                                          nrow = 1, header = TRUE, sep=";")))

plot(strptime(paste(consumption$Date, consumption$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), consumption$Global_active_power, type="l", xlab = "", ylab = "Global Active Power (kilowatts)")