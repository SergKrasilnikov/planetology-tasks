# Load the package
#library(tidyverse)
library(magrittr)

# Read the data with (readxl)
library(readxl)
readxl::excel_sheets("all_points_final.xlsx")


#Set environment
sector_1 <- read_excel(path = "all_points_final.xlsx", sheet = "P1")
sector_2 <- read_excel(path = "all_points_final.xlsx", sheet = "P2")
sector_3 <- read_excel(path = "all_points_final.xlsx", sheet = "P3")
sector_4 <- read_excel(path = "all_points_final.xlsx", sheet = "P4")
sector_5 <- read_excel(path = "all_points_final.xlsx", sheet = "P5")
sector_6 <- read_excel(path = "all_points_final.xlsx", sheet = "P6")
sector_7 <- read_excel(path = "all_points_final.xlsx", sheet = "P7")
sector_8 <- read_excel(path = "all_points_final.xlsx", sheet = "P8")
sector_9 <- read_excel(path = "all_points_final.xlsx", sheet = "P9")
#sector_1_3 <- read_excel(path = "all_points_1-3.xlsx", sheet = "all")

#Small sector
hist(sector_1$RASTERVALU,
     main="Sector 1 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)

hist(sector_2$RASTERVALU,
     main="Sector 2 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)

hist(sector_3$RASTERVALU,
     main="Sector 3 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)

hist(sector_4$RASTERVALU,
     main="Sector 4 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)

hist(sector_5$RASTERVALU,
     main="Sector 5 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)

hist(sector_6$RASTERVALU,
     main="Sector 6 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)
hist(sector_7$RASTERVALU,
     main="Sector 7 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)
hist(sector_8$RASTERVALU,
     main="Sector 8 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)
hist(sector_9$RASTERVALU,
     main="Sector 9 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)


#Add lines
lines(density(north_2$RASTERVALU), col = 6, lwd = 2)

hist(south$RASTERVALU, freq=FALSE)

#Delete extra columns
east <- east[, !names(east) %in% c("OID_", "CID", "...4", "...5", "...6", "...7", "...8", "...9", "...10", "...11", "...12", "...13", "...14")]
north <- north[, !names(north) %in% c("OID *", "Shape *", "-14000", "OID_", "CID", "...4", "...5", "...6", "...7", "...8", "...9", "...10", "...11", "...12", "...13", "...14")]
west <- west[, !names(west) %in% c("OID *", "Shape *", "-14000", "OID_", "CID", "...4", "...5", "...6", "...7", "...8", "...9", "...10", "...11", "...12", "...13", "...14")]
south <- south[, !names(south) %in% c("OID *", "Shape *", "-14000", "OID_", "CID", "...4", "...5", "...6", "...7", "...8", "...9", "...10", "...11", "...12", "...13", "...14")]
