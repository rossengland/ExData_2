#Use base plotting system to show total PM2.5 emissions in the Baltimore City
#Maryland (fips == "24510) from 1999 to 2008

#fips = a five-digit number indicating the US county
#SCC = the name of the source as indicated by a digit string
#Pollutant = a string indicating the polluttant 
#Emissions = amount of PM2.5 emitted in tons
#type: the type of source (point, non-point, on-road, non-road)
#year: The year of emissions recorded

#Read data files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")