# libraries
from mpl_toolkits.basemap import Basemap
import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import openpyxl


book = openpyxl.open('climate_data.xlsx', read_only=True)
sheet = book.active

# made a list (z_list) from .xlsx file of elevation (z)
lat = []
lon = []
for row in range(2, sheet.max_row + 1):
    # FID = sheet[row][0].value
    xx = sheet[row][7].value
    yy = sheet[row][8].value
    # data_list.append([x, y, z])
    lat.append(xx)
    lon.append(yy)


print(lat)
print(lon)

# lat = [66.297, 66.299]
# lon = [33.640, 133.660]

m = Basemap(projection='mill',llcrnrlon=-180. ,llcrnrlat=-80,urcrnrlon=180 ,urcrnrlat=80, resolution = 'l', epsg = 4326)
m.arcgisimage(service='World_Shaded_Relief', xpixels = 1500, verbose= True)
x, y = m(lon,lat)

m.drawparallels(np.arange(66.22,66.37,.04),labels=[1,0,0,0], fontsize =14)
m.drawmeridians(np.arange(33.60,34.,.1),labels=[0,0,0,1], fontsize =14)
m.scatter(x,y,20,marker='o',color='k')
plt.show()

