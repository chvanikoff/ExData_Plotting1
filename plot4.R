source('read_data.R')

png("plot4.png")

par(mfrow = c(2, 2))

with(
  data,
  plot(
    strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"),
    Global_active_power,
    type = 'l',
    xlab = "",
    ylab = 'Global Active Power (kilowatts)'
  )
)

with(
  data,
  plot(
    strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"),
    Voltage,
    type = 'l',
    xlab = 'datetime',
    ylab = 'Voltage'
  )
)

with(
  data,
  plot(
    strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"),
    Sub_metering_1,
    type = 'l',
    xlab = "",
    ylab = 'Energy sub metering'
  )
)
with(
  data,
  lines(
    strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"),
    Sub_metering_2,
    col = 'red'
  )
)
with(
  data,
  lines(
    strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"),
    Sub_metering_3,
    col = 'blue'
  )
)
legend(
  "topright",
  legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
  col = c('black', 'red', 'blue'),
  lwd = 1,
  bty = 'n'
)

with(
  data,
  plot(
    strptime(paste(Date, Time), "%Y-%m-%d %H:%M:%S"),
    Global_reactive_power,
    type = 'l',
    xlab = 'datetime'
  )
)
dev.off()