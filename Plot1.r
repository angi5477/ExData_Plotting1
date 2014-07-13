## loading the dataset into R
HPC<- read.csv("~/exdata-data-household_power_consumption/household_power_consumption.txt", sep=";",na.strings = "?")
View(HPC)
HPC[,1]<-as.Date(HPC[,1],format="%d/%m/%Y")
subdata<-subset(HPC,Date=="2007-02-01"|Date=="2007-02-02")
View(subdata)
##Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.


##Plot1.R
x<-subdata$Global_active_power
hist(x,xlab="Global Active Powe(kilowatts)",ylab="Frequency",main="Global Active Power",col="red")
dev.copy(png, file="plot1_x.png",width=480,height=480)
dev.off()
