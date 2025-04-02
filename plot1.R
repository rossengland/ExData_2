#Use base plotting system to make a plot showing the total PM2.5
#emission from all sources for each of the years 1999,2002,2005,2008

#fips = a five-digit number indicating the US county
#SCC = the name of the source as indicated by a digit string
#Pollutant = a string indicating the polluttant 
#Emissions = amount of PM2.5 emitted in tons
#type: the type of source (point, non-point, on-road, non-road)
#year: The year of emissions recorded

#Read data files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#install dplyr package if not already installed
if(!require("dplyr")) install.packages("dplyr")

#load dplyr package
library(dplyr)

#Sum total emissions grouped by year
EmissionsSum <- aggregate(NEI$Emissions, by=list(NEI$year), FUN=sum)
names(EmissionsSum) <- c("Year", "Total Emissions")


#Export to PNG file
#Sample code
png(filename = "plot1.png", width = 480, heigh = 480, units = "px")
hist(x = hpc$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red", breaks = 15, yaxt = "n", cex.axis = 0.65)
axis(side = 2, at = seq(0,1200,by=200), labels = c("0","200","400","600","800","1000","1200"), cex.axis = 0.65)
dev.off()