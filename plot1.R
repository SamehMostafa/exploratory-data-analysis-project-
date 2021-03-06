DrawingPlot1 <- function(){
setwd("C:/Users/Mooha/Desktop/Coursera")
data <- read.table("household_power_consumption.txt",sep=";",skip=1)
dataNames <- read.table("household_power_consumption.txt", nrows=1,sep=";")
names(data) <- c("Date", "Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
finalData <- subset(data,Date == "1/2/2007" | Date=="2/2/2007")
finalData$Global_active_power <- as.numeric(as.character(finalData$Global_active_power))
png(filename = "C:/Users/Mooha/Desktop/Coursera/plot1.png",width = 480,height = 480)
hist(finalData$Global_active_power,col="red",main="Global Active Power",xlab= "Global Active Power (Killowat)")
dev.off()
}
