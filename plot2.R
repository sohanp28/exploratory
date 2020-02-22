setwd("C:/Users/MAHE/expo")
data<- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
d1 <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
d1$Date <- as.Date(d1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(d1$Date), d1$Time)
d1$Datetime <- as.POSIXct(datetime)
## Plot 2
with(d1, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})