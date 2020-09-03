
par(mfrow =c(2,2))
with(dat1, plot(Datetime, Global_active_power, type= 'l'))
with(dat1, plot(Datetime, Voltage, type= 'l'))
with(dat1, plot(Datetime, Sub_metering_1, type = 'l',xlab = "",ylab = "Energy sub metering"))
lines(Sub_metering_2~Datetime, dat1, col = "red")
lines(Sub_metering_3~Datetime, dat1, col = "blue")
legend("topright", col = c("black", "red", "blue"), lty =1, cex = 0.5 ,lwd=2 , bty = "n", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
with(dat1, plot(Datetime, Global_reactive_power, type = 'l'))
