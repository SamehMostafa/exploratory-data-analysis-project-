DrawingPlot3 <- function(){
  setwd("C:/Users/Mooha/Desktop/Coursera")
  data <- read.table("household_power_consumption.txt",sep=";",skip=1)
  dataNames <- read.table("household_power_consumption.txt", nrows=1,sep=";")
  names(data) <- c("Date", "Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
  finalData <- subset(data,Date == "1/2/2007" | Date=="2/2/2007")
  
  
  finalData$Sub_metering_1 <- as.numeric(as.character(finalData$Sub_metering_1))
  finalData$Sub_metering_2 <- as.numeric(as.character(finalData$Sub_metering_2))
  finalData$Sub_metering_3 <- as.numeric(as.character(finalData$Sub_metering_3))
  
  dateTime <- strptime(paste(finalData$Date, finalData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  png(filename = "C:/Users/Mooha/Desktop/Coursera/plot3.png",width = 480,height = 480)
  plot(datetime, finalData$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
  lines(datetime, finalData$Sub_metering_2, type="l", col="red")
  lines(datetime, finalData$Sub_metering_3, type="l", col="blue")
  legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
  dev.off()
}
