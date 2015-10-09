
# modify the working directory if necessary
#workingDir <- "~/DataScience/ExploratoryDataAnalysis/ExData_Plotting1"
#setwd(workingDir)

# Uncomment the follwing line to create the data. Only needs to be done once.
# source("import.R")

png(filename = "plot2.png", width = 480, height = 480, units = "px",
    pointsize = 12, bg = "transparent")

plot(data$dateTime, data$Global_active_power, type = 'l',
     xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()