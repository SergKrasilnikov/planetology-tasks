# install.packages(packages)
library(ggplot2)
library(dplyr)
library(tidyr)
library(tibble)

# Read the data with (readxl)
library(readxl)
readxl::excel_sheets("WEH.xlsx")
WEH <- read_excel(path = "WEH.xlsx", sheet = "WEH")

readxl::excel_sheets("test.xlsx")
test <- read_excel(path = "test.xlsx", sheet = "WEH")


             
#TEST data for the fast operating             
ggplot(data = test) +
  geom_point(mapping = aes(x = y_lat, y = grid_code, color = grid_code)) +
  #reverse x axis
  scale_x_reverse() +
  
  scale_colour_gradient(low = "cadetblue1",high = "blue4") +
  #black-white theme
  theme_bw() +

  ggtitle("WEH concentration depend on latitude") +
  xlab("Latitude, degree") + ylab("WEH, wt%") +
  labs(colour = "WEH, wt%",) +
  theme(
    plot.title = element_text(hjust=0.5, size=14, face="bold"),
    axis.title.x = element_text(size=14),
    axis.title.y = element_text(size=14),
    
    legend.text = element_text(size=12),
    legend.title = element_text(size=14),
    legend.key.size = unit(1, units = "cm"),
    
    axis.text.x=element_text(size=12),
    axis.text.y=element_text(size=12))




#the main WEH data
ggplot(data = WEH) +
  geom_point(mapping = aes(x = y_lat, y = grid_code, color = grid_code)) +
  scale_x_reverse() +
  scale_colour_gradient(low = "cadetblue1",high = "blue4") +
  
  theme_bw() +
  
  ggtitle("WEH concentration depend on latitude") +
  xlab("Latitude, degree") + ylab("WEH, wt%") +
  labs(colour = "WEH, wt%") +
  theme(
    plot.title = element_text(hjust=0.5, size=14, face="bold"),
    axis.title.x = element_text(size=14),
    axis.title.y = element_text(size=14),
    
    legend.text = element_text(size=12),
    legend.title = element_text(size=14),
    legend.key.size = unit(1, units = "cm"),
    
    axis.text.x=element_text(size=12),
    axis.text.y=element_text(size=12))