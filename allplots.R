# begin plot2
png(  "plot2.png", height=480, width=480)

    plot(  data$Datetime, data$Global_active_power, pch=NA, 
        xlab="", ylab="Global Active Power (kilowatts)")

    lines(  data$Datetime, data$Global_active_power)

    dev.off( )

# begin plot3
png( "plot3.png", height=480, width=480)


    plot( data$Datetime, data$Sub_metering_1, pch=NA, 
        xlab="", ylab="Energy sub metering")

    lines( data$Datetime, data$Sub_metering_1)
    lines( data$Datetime, data$Sub_metering_2, col="red")
    lines( data$Datetime, data$Sub_metering_3, col="blue")

    legend( "topright", 
       c( "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = c( 1,1,1),
       col = c( "black", "red", "blue"))

    dev.off( )

# Open plot4.png
png( "plot4.png", height=480, width=480)

    
    par( mfrow=c( 2,2))

    # Global Active Power v. time
    plot( data$Datetime, 
        data$Global_active_power, 
        pch=NA, 
        xlab="", 
        ylab="Global Active Power (kilowatts)")
    lines( data$Datetime, data$Global_active_power)

    # Voltage v. time
    plot( data$Datetime, data$Voltage, ylab="Voltage", xlab="Datetime", pch=NA)
    lines( data$Datetime, data$Voltage)

    # Submetering v. time
    plot( data$Datetime, 
        data$Sub_metering_1, 
        pch=NA, 
        xlab="", 
        ylab="Energy sub metering")

    lines( data$Datetime, data$Sub_metering_1)
    lines( data$Datetime, data$Sub_metering_2, col="red")
    lines( data$Datetime, data$Sub_metering_3, col="blue")

    legend(  "topright", 
        c(  "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
        lty = c( 1,1,1), col = c( "black", "red", "blue"), bty = "n")

    # Global reactive power v. time
    with(  data, plot ( Datetime, Global_reactive_power, xlab="Datetime", pch=NA))
    with(  data, lines(  Datetime, Global_reactive_power))

    dev.off( )