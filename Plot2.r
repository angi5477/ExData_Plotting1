## loading the dataset into R
HPC<- read.csv("~/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings = "?")
View(HPC)
HPC[,1]<-as.Date(HPC[,1],format="%d/%m/%Y")
subdata<-subset(HPC,Date=="2007-02-01"|Date=="2007-02-02")
View(subdata)
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.

##Plot2.R
plot2data<-na.omit(subdata)
x<-plot2data$Global_active_power
datetime <- paste(plot2data$Date, plot2data$Time)
y<-strptime(datetime,"%Y-%m-%d %H:%M:%S")
plot(y,x, type = "l",xlab="",ylab="Global Active Powe(kilowatts)")
dev.copy(png, file="plot2.png",width=480,height=480)
dev.off()