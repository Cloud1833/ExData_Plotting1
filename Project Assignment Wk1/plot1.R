setwd("C:/Soo Yin/Education & Reference/Exploratory Data Analysis/Project Assignment Wk1")

Data<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",dec=".")

Date<- as.Date(as.character(Data$Date),"%d/%m/%Y")
Data$Date<-Date

Data<-subset(Data, Data$Date >= "2007-02-01" & Data$Date <="2007-02-02")

plot1<-Data$Global_active_power
plot1<-as.numeric(as.character(plot1))

windows.options(width=480, height=480)
png(file="plot1.png")

hist(plot1, col="Red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()