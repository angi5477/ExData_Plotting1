## loading the dataset into R
HPC<- read.csv("~/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings = "?")
View(HPC)
HPC[,1]<-as.Date(HPC[,1],format="%d/%m/%Y")
subdata<-subset(HPC,Date=="2007-02-01"|Date=="2007-02-02")
View(subdata)
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
##Plot3.R
x1<-plot2data$Sub_metering_1
x2<-plot2data$Sub_metering_2
x3<-plot2data$Sub_metering_3
plot(y,x,type="n",xlab="",ylab="Energy sub metering")
points(y,x1,type = "s")
points(y,x2,type = "s",col="red")
points(y,x3,type = "s",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1), lwd=c(2.5,2.5),col=c("black","blue","red")) 
dev.copy(png, file="plot3.png",width=480,height=480)
dev.off()