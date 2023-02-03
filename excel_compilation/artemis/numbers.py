#Working with drillhole data force to fill data in Excel cells
#In this scripts printed data were used for copypast printed results in cell for future combining of data in LeapFrog

#Заполнение Hole_id в файле Survey. Дублируется номер скважены для обозначения начала и конца
# for num in range(0, 1089):
#     print(num)
#     print(num)

#Заполнение Distance в файле Survey. Обозначения начала и конца скважены
# for sep in range(0, 1089):
#     for num in range(1):
#         print(num)
#         print(num + 2300)


#Заполнение Hole_id в файле Assay. Дублируется номер скважены в зависимости от кол-ва слоев.
# for num in range(0, 1089):
#     for in_num in range(14):
#         print(num)


#Заполнение Depth_From в файле Assay. Число во 2ом for зависит от кол-ва слоев -1.
# const = 0
# b = 0
# for sep in range(0, 1089):
#     b += 1
#     print(const)
#     for num in range(13):
#         b += 1
#         print(f'=C{b}')

#Заполнение Depth_To в файле Assay.
# const = 2300
# b = 2
# c = 2
# for sep in range(0, 1089):
#     for num in range(1):
#         print(f'=B{b}+NEW!FB{c}')
#         b += 1
#         print(f'=B{b}+NEW!EU{c}')
#         b += 1
#         print(f'=B{b}+NEW!EN{c}')
#         b += 1
#         print(f'=B{b}+NEW!EG{c}')
#         b += 1
#         print(f'=B{b}+NEW!DZ{c}')
#         b += 1
#         print(f'=B{b}+NEW!DS{c}')
#         b += 1
#         print(f'=B{b}+NEW!DL{c}')
#         b += 1
#         print(f'=B{b}+NEW!BV{c}+NEW!CC{c}+NEW!CJ{c}+NEW!CQ{c}+NEW!CX{c}+NEW!DE{c}')
#         b += 1
#         print(f'=B{b}+NEW!BO{c}')
#         b += 1
#         print(f'=B{b}+NEW!BH{c}')
#         b += 1
#         print(f'=B{b}+NEW!BA{c}')
#         b += 1
#         print(f'=B{b}+NEW!AT{c}')
#         b += 1
#         print(f'=B{b}+NEW!K{c}+NEW!R{c}+NEW!Y{c}+NEW!AF{c}+NEW!AM{c}')
#         b += 1
#     c += 1
#     b += 1
#     print(const)


# Заполнение Lable в файле Assay.
for sep in range(0, 1089):
    print('13_Shackleton')
    print('12_Mare Orientale')
    print('11_Schrodinger')
    print('10_Amundsen')
    print('9_Drygalski')
    print('8_Zeeman')
    print('7_1 Slater')
    print('7_Unnamed + Sverdrup + Unnamed + Haworth + Shoemaker + Faustini')
    print('6_Ashbrook')
    print('5_Cabeus')
    print('4_Bailly')
    print('3_Amundsen-Ganswindt')
    print('2_Unnamed + Unnamed + Nobile + Unnamed + Unnamed')
    print('1_SPA')


