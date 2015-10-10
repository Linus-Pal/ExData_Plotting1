
R version 3.1.3 (2015-03-09) -- "Smooth Sidewalk"
Copyright (C) 2015 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

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

Warning: namespace ‘swirl’ is not available and has been replaced
by .GlobalEnv when processing object ‘ok’
[Previously saved workspace restored]

> filesPath <- "C:/Users/Sunil/Desktop/datasciencecoursera/Exploratory Data Analysis"
> 
> setwd(filesPath)
> if(!file.exists("./data")){dir.create("./data")}
> 
> 
> filesPath <- "C:/Users/Sunil/Desktop/datasciencecoursera/Exploratory Data Analysis/data/household_power_consumption.txt"
> ##Read files
> 
> data <- read.table(filesPath, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
> SubSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
> 
> #str(SubSetData)
> datetime <- strptime(paste(SubSetData$Date, SubSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
> globalActivePower <- as.numeric(SubSetData$Global_active_power)
> subMetering1 <- as.numeric(SubSetData$Sub_metering_1)
> subMetering2 <- as.numeric(SubSetData$Sub_metering_2)
> subMetering3 <- as.numeric(SubSetData$Sub_metering_3)
> 
> png("plot3.png", width=480, height=480)
> plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
> lines(datetime, subMetering2, type="l", col="red")
> lines(datetime, subMetering3, type="l", col="blue")
> legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
> dev.off()
null device 
          1 
> 
