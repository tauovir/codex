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

python3 = r'I am learning "python"'  # raw string
python4 = r"I am learning 'python'"  # raw string

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
print("Character at 0 index:", str1[0])
print("Character at -12 index:", str1[-12])

print("Character at 11 index:", str1[11])
print("Character at -1 index:", str1[-1])

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

# Special operator:
# Concatenating string:
os.system('clear')
str1 = "I eat "
str2 = "Mango "
str3 = "and Apple"
str4 = str1 + str2 + str3
print(str4)

# Concatenating string:
os.system('clear')
fruit_name = "Mango  " * 5
print(fruit_name)

# Membership Operator:
os.system('clear')
string1 = "I love python programing"
print("in Operator:")
print('is love in string1:', 'love' in string1)
print('is I in string1:', 'I' in string1)
print('is python in string1:', 'python' in string1)
print('is java in string1:', 'java' in string1)

print("not in Operator:")
print('is love in string1:', 'love' not in string1)
print('is python in string1:', 'python' not in string1)
print('is java in string1:', 'java' not in string1)

# Comparioson Operator:
os.system('clear')
s1 = "mam"
s2 = "man"
print("s2 >s1:", s2 > s1)

print("M >m:", 'M' > 'm')
print("M < m:", 'M' < 'm')

print("Mango >mango:", "Mango" > "mango")
print("mango >Mango:", "mango" > "Mango")
print("mango !=Mango:", "mango" != "Mango")

# Slicing:
os.system('clear')
print("Slicing String")

str1 = "HELLO PYTHON"
# str2 = str1[3:9:1]
# print("str1[3:9:1]:", str2)
# str2 = str1[0:5:1]
# print("str1[0:5:1]:", str2)
# str2 = str1[:5]
# print("str1[:5]:", str2)
# str2 = str1[1:12:2]
# print("str1[1:12,2]:", str2)
print("str1[3:]", str1[3:])
print("str1[3:-1]:", str1[3: -1])
print("str1[::-1]:", str1[:: -1])

## Immutability
os.system('clear')
print("Slicing String")
str1 = "HELLO PYTHON"
# str1[2] = 'Z'

# Built-in function
os.system('clear')

str1 = "prograMMing"

print("Main string:",str1)
print("Built-in Function:")
print("len:", len(str1))
print("capitalize:", str1.capitalize())
print("split:", str1.split(sep=" "))
print("title:", str1.title())
print("lower:", str1.lower())
print("upper:", str1.upper())
print("isalpha:", str1.isalpha())
print("isalnum:", str1.isalnum())

os.system('clear')

str1 = "  I am learning python  "  # with two leading and trailing spaces
stripped_str = str1.strip()
print("stripped_str:",stripped_str)
print("replace:",str1.replace('I am','We are'))
print("find:",str1.find('learning'))
print("find(not found):",str1.find('java'))
print("index:",str1.index('python'))
print("isalnum:",str1.isalnum())     # contain spaces, so False
print("isalnum:","python3".isalnum())
print("join:","#".join(['p','y','t','h','o','n']))