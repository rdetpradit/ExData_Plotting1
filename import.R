# Download the data file to the working directory before running this script.
# https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

# modify the working directory if necessary
workingDir <- "~/DataScience/ExploratoryDataAnalysis/ExData_Plotting1"
setwd(workingDir)

x = read.csv(unz("exdata-data-household_power_consumption.zip",
             "household_power_consumption.txt"),
             header = TRUE, sep = ";", stringsAsFactors=FALSE, na.strings = "?",
             colClasses = c("character", "character", "numeric", "numeric",
             "numeric", "numeric", "numeric", "numeric", "numeric"))

# reformat date and time
x$dateTime <- c(as.POSIXct(paste(as.Date(x[ ,1], format="%d/%m/%Y"), x[ ,2])))
x$Date <- NULL
x$Time <- NULL

# extract data of interest
startDate <- as.POSIXct("2007-02-01")
endDate <- as.POSIXct("2007-02-03")
data <- x[c(x$dateTime >= startDate & x$dateTime < endDate), ]

# clean up
rm(x)