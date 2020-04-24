##Load Data
data_full <- read.table("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
##Subset the dates that are being asked for
data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
##Format dates
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
##create the histogram 
hist(data1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

png("plot1.png", width=480, height=480)
dev.off()