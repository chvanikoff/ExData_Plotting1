source('read_data.R')

png("plot1.png")
with(
  data,
  hist(
    Global_active_power,
    main = "Global Active Power",
    col = 'red',
    xlab = 'Global Active Power (kilowatts)'
  )
)
dev.off()
