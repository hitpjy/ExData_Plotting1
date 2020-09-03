
with(dat1, plot(Datetime, Sub_metering_1, type = 'l',xlab = "",ylab = "Energy sub metering"))
lines(Sub_metering_2~Datetime, dat1, col = "red")
lines(Sub_metering_3~Datetime, dat1, col = "blue")
legend("topright", col = c("black", "red", "blue"), lwd=2 ,legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
