setwd("C:/Soo Yin/Education & Reference/Exploratory Data Analysis/Project Assignment Wk1")

Data<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",dec=".")

Date<- as.Date(as.character(Data$Date),"%d/%m/%Y")
Data$Date<-Date

Data<-subset(Data, Data$Date >= "2007-02-01" & Data$Date <="2007-02-02")
Data$DateTime<-paste(Data$Date, Data$Time)
Data$DateTime<-strptime(Data$DateTime, format="%Y-%m-%d %H:%M:%S")

y<-Data$Global_active_power
y<-as.numeric(as.character(y))

windows.options(width=480, height=480)
png(file="plot2.png")

plot(Data$DateTime, y, type="l", xlab=NA,ylab="Global Active Power (kilowatts)")

dev.off()
