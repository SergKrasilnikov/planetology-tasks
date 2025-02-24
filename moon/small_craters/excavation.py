import pandas as pd

table = "c:/Learning/Coding/GIT/planetology-tasks/small_craters/excavation_site3.xlsx"
column = "excavation_depth"

df = pd.read_excel(table) # can also index sheet by name or fetch all sheets

count = 0
gardening = {}
max_depth = round(df[column].max(), 1)
count_values = df[column].count()
iterations = int(max_depth * 10)

print(count_values)
print(max_depth)
print(iterations)

for step in range(0, iterations):
    depth = round(step * 0.1, 1)
    gardening[depth] = 0
    for value in df[column]:
        if value >= depth:
            a = gardening[depth]
            gardening[depth] = a + 1

# print(gardening)

# from dictianary to DataFrame
results = pd.DataFrame(list(gardening.items()), columns=['Depth', 'Value'])
results["Persent"] = (results["Value"] * 100) / count_values

# export the dataframe to Excel
results.to_excel("c:/Learning/Coding/GIT/planetology-tasks/small_craters/value_site3.xlsx", index=False)
