# read data, takes approx 5 min. 
# create datetime column, useful for graphs.
# subset a 2-day period.

#  New comment. added new parameter to my read.table call in line 6.
data <- read.table("household_power_consumption.txt", sep = ";", header = T, strangsAsFactors = F,
    colClasses  =  c("character", "character", "numeric",
                    "numeric", "numeric", "numeric",
                    "numeric", "numeric", "numeric"),
    na.strings = "?")

data$DateTime <- strptime(paste(data$Date, data$Time), 
                          "%d/%m/%Y %H:%M:%S")

data <- subset(data, 
    as.Date(DateTime) >=  as.Date("2007-02-01") && 
    as.Date(DateTime) <=  as.Date("2007-02-02"))



# start plot1
png("plot1.png", height  =  480, width  =  480)

hist(data$Global_active_power, main  =  "Global Active Power",
     xlab  =  "", col  =  "red", ylab  =  "Frequency")

dev.off()
