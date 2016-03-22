#plot 3
#first of all we read the data and select the interesting dates removing the rest

dades <- read.csv("household_power_consumption.txt", sep =";")
day <- dades[dades$Date == "1/2/2007" | dades$Date == "2/2/2007",]

rm(dades)

# Create a vector with the date and time, to do this we must import lubridate

library(lubridate)
newcolumn <- paste(day$Date, day$Time)
daytime <- dmy_hms(newcolumn)
rm(newcolumn)

# now plot the data

png(filename = "plot3.png", width = 480, height = 480)
plot(daytime, day$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub mettering")
points(daytime, day$Sub_metering_2, type = "l", col = "red")
points(daytime, day$Sub_metering_3, type = "l", col = "cyan")
legend("topleft", c("Submeter1", "Submeter2", "Submeter3"), col = c("black", "red", "cyan"), lwd = 1)
dev.off()

