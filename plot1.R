
# modify the working directory if necessary
#workingDir <- "~/DataScience/ExploratoryDataAnalysis/ExData_Plotting1"
#setwd(workingDir)

# Uncomment the follwing line to create the data. Only needs to be done once.
# source("import.R")

png(filename = "plot1.png", width = 480, height = 480, units = "px",
    pointsize = 12, bg = "transparent")

hist(data$Global_active_power, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()

