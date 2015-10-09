
# modify the working directory if necessary
#workingDir <- "~/DataScience/ExploratoryDataAnalysis/ExData_Plotting1"
#setwd(workingDir)

# Uncomment the follwing line to create the data. Only needs to be done once.
# source("import.R")

png(filename = "plot4.png", width = 480, height = 480, units = "px",
    bg = "transparent")

par(mfrow = c(2, 2))

plot(data$dateTime, data$Global_active_power, type = 'l',
     xlab = "", ylab = "Global Active Power")

plot(data$dateTime, data$Voltage, type = 'l',
     xlab = "datetime", ylab = "Voltage")

plot(data$dateTime, data$Sub_metering_1 , type="n",xlab="",
     ylab="Energy sub metering")

points(data$dateTime, data$Sub_metering_1, type = "l", col="black")
points(data$dateTime, data$Sub_metering_2, type = "l", col="red")
points(data$dateTime, data$Sub_metering_3, type = "l", col="blue")

legend("topright", col = c("black", "red", "blue"), lty = c(1, 1, 1), bty = "n",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(data$dateTime, data$Global_reactive_power, type = 'l',
     xlab = "datetime", ylab = "Global_reactive_power")

dev.off()

