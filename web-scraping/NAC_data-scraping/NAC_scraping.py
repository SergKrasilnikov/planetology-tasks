from bs4 import BeautifulSoup
import requests
from collections import OrderedDict
import json

image = 'M1102725514LE' #set image name
url = f"https://wms.lroc.asu.edu/lroc/view_lroc/LRO-L-LROC-2-EDR-V1.0/{image}"

def searching_values(flag, text_value): # extract data from the LROC NAC website
    if sub_heading.text == "Center latitude\n        ":
        flag = True
        text_value = "Center latitude"
    elif sub_heading.text == "Center longitude\n        ":
        flag = True
        text_value = "Center longitude"
    elif sub_heading.text == "Sub solar latitude\n        ":
        flag = True
        text_value = "Sub solar latitude"
    elif sub_heading.text == "Sub solar longitude\n        ":
        flag = True
        text_value = "Sub solar longitude"

    elif sub_heading.text == "Sub spacecraft latitude\n        ":
        flag = True
        text_value = "Sub spacecraft latitude"
    elif sub_heading.text == "Sub spacecraft longitude\n        ":
        flag = True
        text_value = "Sub spacecraft longitude"

    elif sub_heading.text == "Sub solar azimuth\n        ":
        flag = True
        text_value = "AzimuthSun"
    elif sub_heading.text == "Incidence angle\n        ":
        flag = True
        text_value = "IncidenceAngle"
    elif sub_heading.text == "Emission angle\n        ":
        flag = True
        text_value = "EmissionAngle"
    elif sub_heading.text == "Phase angle\n        ":
        flag = True
        text_value = "PhaseAngle"
    return flag, text_value

def make_dict(text_dict): #correction of the dictionary and ordering the files
    text_dict['Cen_latlon'] = f'{text_dict["Center latitude"]},{text_dict["Center longitude"]}'
    text_dict.pop("Center latitude", None), text_dict.pop("Center longitude", None)

    text_dict['SubSol_latlon'] = f'{text_dict["Sub solar latitude"]},{text_dict["Sub solar longitude"]}'
    text_dict.pop("Sub solar latitude", None), text_dict.pop("Sub solar longitude", None)

    text_dict['SubSen_latlon'] = f'{text_dict["Sub spacecraft latitude"]},{text_dict["Sub spacecraft longitude"]}'
    text_dict.pop("Sub spacecraft latitude", None), text_dict.pop("Sub spacecraft longitude", None)

    text_dict = OrderedDict(text_dict)
    text_dict.move_to_end('AzimuthSun')
    text_dict['AzimuthSensor'] = 999
    text_dict.move_to_end('IncidenceAngle')
    text_dict.move_to_end('EmissionAngle')
    text_dict.move_to_end('PhaseAngle')
    return text_dict

try:
    r = requests.get(url) # Send a GET request to the webpage
    ordered_text = BeautifulSoup(r.text, 'lxml')
    content_list = ordered_text.findAll("td")

    text_value = ''
    text_dict = {}
    flag = False
    for sub_heading in ordered_text.find_all('td'):
        if flag == True:
            text_dict[text_value] = sub_heading.text
            flag = False
        flag, text_value = searching_values(flag, text_value)

    text_dict = make_dict(text_dict)

    print(text_dict)

    with open('NAC/NAC_data.json', 'w') as file: # save dictionary as JSON file
        json.dump(text_dict, file, ensure_ascii=False, indent=4)

except:
    print("Can't find the required image OR something wrong with the URL.")