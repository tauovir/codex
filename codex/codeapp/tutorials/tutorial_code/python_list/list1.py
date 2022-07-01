import os

list1 = []  # empty List
list2 = [10, 20, 30, 50, 80, 4]  # List of Integers
list3 = ['Red', 20, 109.36, True]  # List of different Data types
list4 = ['Red', "Blue", "Black"]  # List of String
list5 = [[1, 2, 3], [10, 20, 30], ['a', 'b', 'c']]  # Nested List

# Creating list from a sequence
l1 = list("Python")
print(l1)

empty_list = list()
print(empty_list)

# Creating a List from an existing list:
l1 = [10, 20, 30, 50, 80, 4]  # List of Integers
l2 = [[1, 2, 3], [10, 20, 30], ['a', 'b', 'c']]  # Nested List
new_l1 = l1[0:4]  # new_l1 will contain [10, 20,30]
new_l2 = l2[-1]  ## new_l1 will contain [['a', 'b', 'c']
print("new_l1:", new_l1)
print("new_l2:", new_l2)

# List Index
os.system('clear')
list1 = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
print("list1[0]:", list1[0])
print("list1[-10]:", list1[-10])
print("list1[5]:", list1[5])
print("list1[-4]:", list1[-4])

# print("list1[15]:",list1[15])
# Loop
os.system('clear')
list1 = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
for ele in list1:
    print(ele)
# Using range function.
os.system('clear')
list1 = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
for index in range(len(list1)):
    print(list1[index])

# Aliasing
os.system('clear')
colors = ["RED", "BLUE", "GREEN"]
temp_colors = colors
temp_colors2 = temp_colors
print("*" * 30, "MEMORY ADDRESS", "*" * 30)
print("Memory address of colors:", id(colors))
print("Memory address of temp_colors:", id(temp_colors))
print("Memory address of temp_colors2:", id(temp_colors2))
print("*" * 30, "BEFORE MODIFICATION", "*" * 30)
print("colors:", colors)
print("temp_colors:", temp_colors)
print("temp_colors:", temp_colors2)
temp_colors2[1] = "BLACK"
print("*" * 30, "AFTER MODIFICATION", "*" * 30)
print("colors:", colors)
print("temp_colors:", temp_colors)
print("temp_colors:", temp_colors2)

# Comparing List:
os.system('clear')
l1 = [10, 20, 30]
l2 = [10, 20, 30]
l3 = [10, 20, 40]
print("l1==l2:", l1 == l2)
print("l1 > l3:", l1 > l3)
print("l1 < l3:", l1 < l3)
