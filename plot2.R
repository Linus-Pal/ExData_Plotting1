
R version 3.2.0 (2015-04-16) -- "Full of Ingredients"
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
> png("plot2.png", width=480, height=480)
> plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
> dev.off()
null device 
          1 
> 
