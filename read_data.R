data <- read.table("household_power_consumption.txt", header = T, sep = ";", as.is = T, na.strings = "?")

data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- data[data$Date == '2007-02-01' | data$Date == '2007-02-02',]
for(i in 3:9) data[,i] <- as.numeric(data[,i])