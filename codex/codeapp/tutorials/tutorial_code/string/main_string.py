# Create string
import os
str1 = 'String in single quotes'
str2 = 'String in double quotes'
str3 = """String in triple quotes"""
empty_str = ""

print(str1)
print(str2)
print(str3)
print(empty_str)

"""
Double quotes and single quotes are part of Python language; they are special characters. 
To insert them in string you have to escape them with \  character in front of them or 
prepend the string with a 'r' indicating that it is a raw string
"""
python1 = "I am learning \"Python\""
python2 = "I am learning \'Python\'"

python3 = r'I am learning "python"' #raw string
python4 = r"I am learning 'python'" #raw string


print("Using Escape:")
print(python1)
print(python2)
print("USing Raw String:")
print(python3)
print(python4)


"""
Traversing string
"""
print("Traversing string \n")
str1 = "Hello Python"
print(str1)
# print("Character at 0 index:",str1[0])
# print("Character at 2 index:",str1[2])
# print("Character at 7 index:",str1[7])
# print("Character at 7 index:",str1[15])  # Index out of range

# Negating indexing

str1 = "Hello Python"
print("Character at 0 index:",str1[0])
print("Character at -12 index:",str1[-12])

print("Character at 11 index:",str1[11])
print("Character at -1 index:",str1[-1])

# # Using for loop
# str1 = "Hello Python"
# for ch in str1:
#     print(ch)
#
# Using While loop
print("Whle loop")
str1 = "Hello Python"
index = 0
while index < len(str1):
    print(str1[index])
    index += 1


#Special operator:
#Concatenating string:
os.system('clear')
str1 = "I eat "
str2 = "Mango "
str3 = "and Apple"
str4 = str1 +str2 + str3
print(str4)


#Concatenating string:
os.system('clear')
fruit_name = "Mango  " * 5
print(fruit_name)

#Membership Operator:
os.system('clear')
string1 = "I love python programing"
print("in Operator:")
print('is love in string1:','love' in string1)
print('is I in string1:','I' in string1)
print('is python in string1:','python' in string1)
print('is java in string1:','java' in string1)

print("not in Operator:")
print('is love in string1:','love' not in string1)
print('is python in string1:','python' not in string1)
print('is java in string1:','java' not in string1)