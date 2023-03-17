# install.packages('tidyverse')
# install.packages("data.table")

library(data.table) # open large .txt files
library(tidyverse) # transformation of the data
library(foreign) # export to the .dbf
my_data <- fread("h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue
                 /LU1319381_HKPolyU.txt")

# add radius for the calculations in the ArcGIS
radius = my_data$Diameter_m / 2
my_data$radius <- radius


#  In the fellow section, I will transform our database to the .dbf files
# readable in ArcGIS. The data is grouped by sectors 30x30 degrees. To open .dbf
# files in ArcGIS, use 'Add data' in the menu - right click on the layer -
# Display XY data - set X (Longitude) and Y (Latitude) with the GCS_Moon_2000
# coordinate system.


# sector 150 - 180 western latitudes
W150_180_S60_90 <- dplyr::filter(my_data, Longitude < -150, Latitude < -60)
W150_180_S30_60 <- dplyr::filter(my_data, Longitude < -150, Latitude < -30, Latitude >= -60)
W150_180_S0_30 <- dplyr::filter(my_data, Longitude < -150, Latitude < 0, Latitude >= -30)
W150_180_N0_30 <- dplyr::filter(my_data, Longitude < -150, Latitude < 30, Latitude >= 0)
W150_180_N30_60 <- dplyr::filter(my_data, Longitude < -150, Latitude < 60, Latitude >= 30)
W150_180_N60_90 <- dplyr::filter(my_data, Longitude < -150, Latitude >= 60)

write.dbf(W150_180_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180W_60-90S.dbf")
write.dbf(W150_180_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180W_30-60S.dbf")
write.dbf(W150_180_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180W_0-30S.dbf")
write.dbf(W150_180_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180W_0-30N.dbf")
write.dbf(W150_180_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180W_30-60N.dbf")
write.dbf(W150_180_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180W_60-90N.dbf")

# sector 120 - 150 western latitudes
W120_150_S60_90 <- dplyr::filter(my_data, Longitude >= -150, Longitude < -120, Latitude < -60)
W120_150_S30_60 <- dplyr::filter(my_data, Longitude >= -150, Longitude < -120, Latitude < -30, Latitude >= -60)
W120_150_S0_30 <- dplyr::filter(my_data, Longitude >= -150, Longitude < -120, Latitude < 0, Latitude >= -30)
W120_150_N0_30 <- dplyr::filter(my_data, Longitude >= -150, Longitude < -120, Latitude < 30, Latitude >= 0)
W120_150_N30_60 <- dplyr::filter(my_data, Longitude >= -150, Longitude < -120, Latitude < 60, Latitude >= 30)
W120_150_N60_90 <- dplyr::filter(my_data, Longitude >= -150, Longitude < -120, Latitude >= 60)

write.dbf(W120_150_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150W_60-90S.dbf")
write.dbf(W120_150_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150W_30-60S.dbf")
write.dbf(W120_150_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150W_0-30S.dbf")
write.dbf(W120_150_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150W_0-30N.dbf")
write.dbf(W120_150_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150W_30-60N.dbf")
write.dbf(W120_150_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150W_60-90N.dbf")

# sector 90 - 120 western latitudes
W90_120_S60_90 <- dplyr::filter(my_data, Longitude >= -120, Longitude < -90, Latitude < -60)
W90_120_S30_60 <- dplyr::filter(my_data, Longitude >= -120, Longitude < -90, Latitude < -30, Latitude >= -60)
W90_120_S0_30 <- dplyr::filter(my_data, Longitude >= -120, Longitude < -90, Latitude < 0, Latitude >= -30)
W90_120_N0_30 <- dplyr::filter(my_data, Longitude >= -120, Longitude < -90, Latitude < 30, Latitude >= 0)
W90_120_N30_60 <- dplyr::filter(my_data, Longitude >= -120, Longitude < -90, Latitude < 60, Latitude >= 30)
W90_120_N60_90 <- dplyr::filter(my_data, Longitude >= -120, Longitude < -90, Latitude >= 60)

write.dbf(W90_120_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120W_60-90S.dbf")
write.dbf(W90_120_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120W_30-60S.dbf")
write.dbf(W90_120_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120W_0-30S.dbf")
write.dbf(W90_120_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120W_0-30N.dbf")
write.dbf(W90_120_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120W_30-60N.dbf")
write.dbf(W90_120_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120W_60-90N.dbf")

# sector 60 - 90 western latitudes
W60_90_S60_90 <- dplyr::filter(my_data, Longitude >= -90, Longitude < -60, Latitude < -60)
W60_90_S30_60 <- dplyr::filter(my_data, Longitude >= -90, Longitude < -60, Latitude < -30, Latitude >= -60)
W60_90_S0_30 <- dplyr::filter(my_data, Longitude >= -90, Longitude < -60, Latitude < 0, Latitude >= -30)
W60_90_N0_30 <- dplyr::filter(my_data, Longitude >= -90, Longitude < -60, Latitude < 30, Latitude >= 0)
W60_90_N30_60 <- dplyr::filter(my_data, Longitude >= -90, Longitude < -60, Latitude < 60, Latitude >= 30)
W60_90_N60_90 <- dplyr::filter(my_data, Longitude >= -90, Longitude < -60, Latitude >= 60)

write.dbf(W60_90_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90W_60-90S.dbf")
write.dbf(W60_90_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90W_30-60S.dbf")
write.dbf(W60_90_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90W_0-30S.dbf")
write.dbf(W60_90_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90W_0-30N.dbf")
write.dbf(W60_90_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90W_30-60N.dbf")
write.dbf(W60_90_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90W_60-90N.dbf")

# sector 30 - 60 western latitudes
W30_60_S60_90 <- dplyr::filter(my_data, Longitude >= -60, Longitude < -30, Latitude < -60)
W30_60_S30_60 <- dplyr::filter(my_data, Longitude >= -60, Longitude < -30, Latitude < -30, Latitude >= -60)
W30_60_S0_30 <- dplyr::filter(my_data, Longitude >= -60, Longitude < -30, Latitude < 0, Latitude >= -30)
W30_60_N0_30 <- dplyr::filter(my_data, Longitude >= -60, Longitude < -30, Latitude < 30, Latitude >= 0)
W30_60_N30_60 <- dplyr::filter(my_data, Longitude >= -60, Longitude < -30, Latitude < 60, Latitude >= 30)
W30_60_N60_90 <- dplyr::filter(my_data, Longitude >= -60, Longitude < -30, Latitude >= 60)

write.dbf(W30_60_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60W_60-90S.dbf")
write.dbf(W30_60_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60W_30-60S.dbf")
write.dbf(W30_60_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60W_0-30S.dbf")
write.dbf(W30_60_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60W_0-30N.dbf")
write.dbf(W30_60_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60W_30-60N.dbf")
write.dbf(W30_60_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60W_60-90N.dbf")

# sector 0 - 30 western latitudes
W0_30_S60_90 <- dplyr::filter(my_data, Longitude >= -30, Longitude < 0, Latitude < -60)
W0_30_S30_60 <- dplyr::filter(my_data, Longitude >= -30, Longitude < 0, Latitude < -30, Latitude >= -60)
W0_30_S0_30 <- dplyr::filter(my_data, Longitude >= -30, Longitude < 0, Latitude < 0, Latitude >= -30)
W0_30_N0_30 <- dplyr::filter(my_data, Longitude >= -30, Longitude < 0, Latitude < 30, Latitude >= 0)
W0_30_N30_60 <- dplyr::filter(my_data, Longitude >= -30, Longitude < 0, Latitude < 60, Latitude >= 30)
W0_30_N60_90 <- dplyr::filter(my_data, Longitude >= -30, Longitude < 0, Latitude >= 60)

write.dbf(W0_30_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30W_60-90S.dbf")
write.dbf(W0_30_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30W_30-60S.dbf")
write.dbf(W0_30_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30W_0-30S.dbf")
write.dbf(W0_30_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30W_0-30N.dbf")
write.dbf(W0_30_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30W_30-60N.dbf")
write.dbf(W0_30_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30W_60-90N.dbf")

# sector 0 - 30 eastern latitudes
E0_30_S60_90 <- dplyr::filter(my_data, Longitude >= 0, Longitude < 30, Latitude < -60)
E0_30_S30_60 <- dplyr::filter(my_data, Longitude >= 0, Longitude < 30, Latitude < -30, Latitude >= -60)
E0_30_S0_30 <- dplyr::filter(my_data, Longitude >= 0, Longitude < 30, Latitude < 0, Latitude >= -30)
E0_30_N0_30 <- dplyr::filter(my_data, Longitude >= 0, Longitude < 30, Latitude < 30, Latitude >= 0)
E0_30_N30_60 <- dplyr::filter(my_data, Longitude >= 0, Longitude < 30, Latitude < 60, Latitude >= 30)
E0_30_N60_90 <- dplyr::filter(my_data, Longitude >= 0, Longitude < 30, Latitude >= 60)

write.dbf(E0_30_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30E_60-90S.dbf")
write.dbf(E0_30_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30E_30-60S.dbf")
write.dbf(E0_30_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30E_0-30S.dbf")
write.dbf(E0_30_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30E_0-30N.dbf")
write.dbf(E0_30_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30E_30-60N.dbf")
write.dbf(E0_30_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_0-30E_60-90N.dbf")

# sector 30 - 60 eastern latitudes
E30_60_S60_90 <- dplyr::filter(my_data, Longitude >= 30, Longitude < 60, Latitude < -60)
E30_60_S30_60 <- dplyr::filter(my_data, Longitude >= 30, Longitude < 60, Latitude < -30, Latitude >= -60)
E30_60_S0_30 <- dplyr::filter(my_data, Longitude >= 30, Longitude < 60, Latitude < 0, Latitude >= -30)
E30_60_N0_30 <- dplyr::filter(my_data, Longitude >= 30, Longitude < 60, Latitude < 30, Latitude >= 0)
E30_60_N30_60 <- dplyr::filter(my_data, Longitude >= 30, Longitude < 60, Latitude < 60, Latitude >= 30)
E30_60_N60_90 <- dplyr::filter(my_data, Longitude >= 30, Longitude < 60, Latitude >= 60)

write.dbf(E30_60_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60E_60-90S.dbf")
write.dbf(E30_60_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60E_30-60S.dbf")
write.dbf(E30_60_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60E_0-30S.dbf")
write.dbf(E30_60_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60E_0-30N.dbf")
write.dbf(E30_60_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60E_30-60N.dbf")
write.dbf(E30_60_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_30-60E_60-90N.dbf")

# sector 60 - 90 eastern latitudes
E60_90_S60_90 <- dplyr::filter(my_data, Longitude >= 60, Longitude < 90, Latitude < -60)
E60_90_S30_60 <- dplyr::filter(my_data, Longitude >= 60, Longitude < 90, Latitude < -30, Latitude >= -60)
E60_90_S0_30 <- dplyr::filter(my_data, Longitude >= 60, Longitude < 90, Latitude < 0, Latitude >= -30)
E60_90_N0_30 <- dplyr::filter(my_data, Longitude >= 60, Longitude < 90, Latitude < 30, Latitude >= 0)
E60_90_N30_60 <- dplyr::filter(my_data, Longitude >= 60, Longitude < 90, Latitude < 60, Latitude >= 30)
E60_90_N60_90 <- dplyr::filter(my_data, Longitude >= 60, Longitude < 90, Latitude >= 60)

write.dbf(E60_90_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90E_60-90S.dbf")
write.dbf(E60_90_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90E_30-60S.dbf")
write.dbf(E60_90_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90E_0-30S.dbf")
write.dbf(E60_90_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90E_0-30N.dbf")
write.dbf(E60_90_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90E_30-60N.dbf")
write.dbf(E60_90_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_60-90E_60-90N.dbf")

# sector 90 - 120 eastern latitudes
E90_120_S60_90 <- dplyr::filter(my_data, Longitude >= 90, Longitude < 120, Latitude < -60)
E90_120_S30_60 <- dplyr::filter(my_data, Longitude >= 90, Longitude < 120, Latitude < -30, Latitude >= -60)
E90_120_S0_30 <- dplyr::filter(my_data, Longitude >= 90, Longitude < 120, Latitude < 0, Latitude >= -30)
E90_120_N0_30 <- dplyr::filter(my_data, Longitude >= 90, Longitude < 120, Latitude < 30, Latitude >= 0)
E90_120_N30_60 <- dplyr::filter(my_data, Longitude >= 90, Longitude < 120, Latitude < 60, Latitude >= 30)
E90_120_N60_90 <- dplyr::filter(my_data, Longitude >= 90, Longitude < 120, Latitude >= 60)

write.dbf(E90_120_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120E_60-90S.dbf")
write.dbf(E90_120_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120E_30-60S.dbf")
write.dbf(E90_120_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120E_0-30S.dbf")
write.dbf(E90_120_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120E_0-30N.dbf")
write.dbf(E90_120_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120E_30-60N.dbf")
write.dbf(E90_120_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_90-120E_60-90N.dbf")

# sector 120 - 150 eastern latitudes
E120_150_S60_90 <- dplyr::filter(my_data, Longitude >= 120, Longitude < 150, Latitude < -60)
E120_150_S30_60 <- dplyr::filter(my_data, Longitude >= 120, Longitude < 150, Latitude < -30, Latitude >= -60)
E120_150_S0_30 <- dplyr::filter(my_data, Longitude >= 120, Longitude < 150, Latitude < 0, Latitude >= -30)
E120_150_N0_30 <- dplyr::filter(my_data, Longitude >= 120, Longitude < 150, Latitude < 30, Latitude >= 0)
E120_150_N30_60 <- dplyr::filter(my_data, Longitude >= 120, Longitude < 150, Latitude < 60, Latitude >= 30)
E120_150_N60_90 <- dplyr::filter(my_data, Longitude >= 120, Longitude < 150, Latitude >= 60)

write.dbf(E120_150_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150E_60-90S.dbf")
write.dbf(E120_150_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150E_30-60S.dbf")
write.dbf(E120_150_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150E_0-30S.dbf")
write.dbf(E120_150_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150E_0-30N.dbf")
write.dbf(E120_150_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150E_30-60N.dbf")
write.dbf(E120_150_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_120-150E_60-90N.dbf")

# sector 150 - 180 eastern latitudes
E150_180_S60_90 <- dplyr::filter(my_data, Longitude >= 150, Latitude < -60)
E150_180_S30_60 <- dplyr::filter(my_data, Longitude >= 150, Latitude < -30, Latitude >= -60)
E150_180_S0_30 <- dplyr::filter(my_data, Longitude >= 150, Latitude < 0, Latitude >= -30)
E150_180_N0_30 <- dplyr::filter(my_data, Longitude >= 150, Latitude < 30, Latitude >= 0)
E150_180_N30_60 <- dplyr::filter(my_data, Longitude >= 150,Latitude < 60, Latitude >= 30)
E150_180_N60_90 <- dplyr::filter(my_data, Longitude >= 150, Latitude >= 60)

write.dbf(E150_180_S60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180E_60-90S.dbf")
write.dbf(E150_180_S30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180E_30-60S.dbf")
write.dbf(E150_180_S0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180E_0-30S.dbf")
write.dbf(E150_180_N0_30, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180E_0-30N.dbf")
write.dbf(E150_180_N30_60, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180E_30-60N.dbf")
write.dbf(E150_180_N60_90, "h:/Learning/Coding/GIT/planetology-tasks/moon_craters_catalogue/output/HKPolyU_150-180E_60-90N.dbf")

