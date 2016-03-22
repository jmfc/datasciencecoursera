#plot 2
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

png(filename = "plot2.png", width = 480, height = 480)
plot(daytime, day$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()

