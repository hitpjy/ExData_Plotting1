dat <- read.table("household_power_consumption.txt",sep = ";", header = TRUE)
library(lubridate)
dat$Date<-dmy(dat$Date)
dat1 <- subset(dat, Date == "2007-02-01"| Date == "2007-02-02")
for (i in 3:9){
  dat1[,i] <- as.numeric(dat1[,i])
}
dat1$Datetime <- ymd_hms(paste(dat1$Date, dat1$Time))
with(dat1, plot(Datetime, Sub_metering_1, type = 'l',xlab = "",ylab = "Energy sub metering"))
lines(Sub_metering_2~Datetime, dat1, col = "red")
lines(Sub_metering_3~Datetime, dat1, col = "blue")
legend("topright", col = c("black", "red", "blue"), lwd=2 ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
