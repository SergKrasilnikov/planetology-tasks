library(magrittr)

# Read the data with (readxl)
library(readxl)
readxl::excel_sheets("all_points_final.xlsx")

WEH <- read_excel(path = "WEH.xlsx", sheet = "WEH")

#Small sector
hist(WEH$grid_code,
     main="Sector 1 with frequency of elevation points of SPA rim",
     xlab="Elevation",
     ylab="Frequency",
     xlim=c(-14000,20000),
     ylim=c(0, 2700),
     breaks=24,
     col="cadetblue"
)