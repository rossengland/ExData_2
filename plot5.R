#Use a plotting system of your choice to determine how emissions from 
#motor vehicle sources changed from 1999 - 2008 in Baltmore City (fips == "24510")

#fips = a five-digit number indicating the US county
#SCC = the name of the source as indicated by a digit string
#Pollutant = a string indicating the polluttant 
#Emissions = amount of PM2.5 emitted in tons
#type: the type of source (point, non-point, on-road, non-road)
#year: The year of emissions recorded

#Read data files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")