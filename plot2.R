source('read_data.R')

png("plot2.png")
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
dev.off()
