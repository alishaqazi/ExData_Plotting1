
R version 3.4.1 (2017-06-30) -- "Single Candle"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin15.6.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

[R.app GUI 1.70 (7375) x86_64-apple-darwin15.6.0]

[Workspace restored from /Users/alishaqazi/.RData]
[History restored from /Users/alishaqazi/.Rapp.history]

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
> 
> 