
> getwd()
[1] "/Users/alishaqazi/Downloads"

> housefile <- file("household_power_consumption.txt")
> hf <- read.table(housefile, header=T, sep = ";", na.strings="?")
> useData <- hf[hf$Date %in% c("1/2/2007", "2/2/2007"),]
> setTime <- strptime(paste(useData$Date, useData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
> useData <- cbind(setTime, useData)
> 
> with(useData, {
+ plot(Sub_metering_1~setTime, type="l", ylab="Energy sub metering", xlab="")
+ lines(Sub_metering_2~setTime,col="red")
+ lines(Sub_metering_3~setTime,col="blue")
+ })
> legend("topright", col=c("black","red","blue"), lwd=c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

> dev.copy(png, "plot3.png", width=480, height=480)
quartz_off_screen 
                3 
> dev.off()
quartz 
     2 
>
