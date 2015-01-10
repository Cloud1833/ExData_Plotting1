setwd("C:/Soo Yin/Education & Reference/Exploratory Data Analysis/Project Assignment Wk1")

Data<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",dec=".")

Date<- as.Date(as.character(Data$Date),"%d/%m/%Y")
Data$Date<-Date

Data<-subset(Data, Data$Date >= "2007-02-01" & Data$Date <="2007-02-02")
Data$DateTime<-paste(Data$Date, Data$Time)
Data$DateTime<-strptime(Data$DateTime, format="%Y-%m-%d %H:%M:%S")

x<-Data$DateTime

y1<-Data$Sub_metering_1
y1<-as.numeric(as.character(y1))
y2<-Data$Sub_metering_2
y2<-as.numeric(as.character(y2))
y3<-Data$Sub_metering_3
y3<-as.numeric(as.character(y3))

windows.options(width=480, height=480)
png(file="plot3.png")

plot(x, y1, type="l", xlab=NA,ylab="Energy sub metering",col="black")
lines(x, y2, type="l", xlab=NA,ylab="Energy sub metering",col="red")
lines(x, y3, type="l", xlab=NA,ylab="Energy sub metering",col="blue")
legend("topright",lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.off()
