dat <- read.table("household_power_consumption.txt",sep = ";", header = TRUE)
library(lubridate)
dat$Date<-dmy(dat$Date)
dat1 <- subset(dat, Date == "2007-02-01"| Date == "2007-02-02")
for (i in 3:9){
  dat1[,i] <- as.numeric(dat1[,i])
}
dat1$Datetime <- ymd_hms(paste(dat1$Date, dat1$Time))
with(dat1, plot(Datetime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power(kilowatts)"))
