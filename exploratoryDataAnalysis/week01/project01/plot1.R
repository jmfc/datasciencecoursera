#plot 1 
#first of all we read the data and select the interesting dates removing the rest

dades <- read.csv("household_power_consumption.txt", sep =";")
day <- dades[dades$Date == "1/2/2007" | dades$Date == "2/2/2007",]

rm(dades)

# now plot the histogram

png(filename = "plot1.png", width = 480, height = 480)
hist(as.numeric(day$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()
