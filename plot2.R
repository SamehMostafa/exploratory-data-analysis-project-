DrawingPlot2 <- function(){
  setwd("C:/Users/Mooha/Desktop/Coursera")
  data <- read.table("household_power_consumption.txt",sep=";",skip=1)
  dataNames <- read.table("household_power_consumption.txt", nrows=1,sep=";")
  names(data) <- c("Date", "Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  finalData <- subset(data,Date == "1/2/2007" | Date=="2/2/2007")
  finalData$Global_active_power <- as.numeric(as.character(finalData$Global_active_power))
  dateTime <- strptime(paste(finalData$Date, finalData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  png(filename = "C:/Users/Mooha/Desktop/Coursera/plot2.png",width = 480,height = 480)
  plot(datetime, finalData$Global_active_power, type="l", ylab="Global Active Power (kilowatts)")
  dev.off()
}
