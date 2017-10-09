

> getwd()
[1] "/Users/alishaqazi/Downloads"

> housefile <- file("household_power_consumption.txt")
> hf <- read.table(housefile, header=T, sep = ";", na.strings="?")
> useData <- hf[hf$Date %in% c("1/2/2007", "2/2/2007"),]
> setTime <- strptime(paste(useData$Date, useData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
> useData <- cbind(setTime, useData)
> 
> plot(useData$setTime, useData$Global_active_power, type="l", col="black", xlab="", ylab="Global Active Power (kilowatts)")

> dev.copy(png, "plot2.png", width=480, height=480)
quartz_off_screen 
                3 
> dev.off()
quartz 
     2 
