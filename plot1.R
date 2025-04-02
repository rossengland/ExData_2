#Use base plotting system to make a plot showing the total PM2.5
#emission from all sources for each of the years 1999,2002,2005,2008

#Read data files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")